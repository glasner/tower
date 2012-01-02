class Tower::Service
  
  ## Takes
  # setup args for runners
  def self.takes(*names)
    return @takes if names.empty?
    @takes = names
  end
  
  ## Runners
  
  # run service now
  def self.now(*args)
    new(*args).run
  end
  
  def self.later(*args)
    Tower::Queue.add self, *args
  end
  

  ## Initialize
  # takes any number of args which are set as instance variables
  def initialize(*args)
    set_instance_variables args
  end
  
  
  ## Run
  # called by Service.now after initializing new service
  # override with service logic
  def run; raise NotImplementedError; end
  alias :perform :run
  
  private

  
  ## Instance Variables
  # args passed to runners saved as instance variables
  
  # @params[values] args array from #initialize
  # creates an instance variable for each arg passed to initialize
  # variable names pulled from self.class.args
  def set_instance_variables(values)
    values.each_with_index do |value,i|
      name = self.class.takes[i]
      instance_variable_set "@#{name}",value
    end
  end
  
end