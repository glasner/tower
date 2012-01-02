class Tower::Queue
  
  ## Current Queue
  
  def self.current
    @@current ||= new
  end
  
  ### Current Queue Actions
  # never interact directly with instance
  # call following proxy methods instead
  
  def self.add(service,*args)
    current.send :add, service, *args
  end

  private 
  
  ## Initialize
  # adds methods from #backend_instance_methods to instance
  # extended here to avoid calling #find_backend when class is loaded
  def initialize
    extend backend_instance_methods
  end
  
  ## Backend
  # returns module for current backend, e.g. Tower::Queue::WithDelayedJob
  def backend_instance_methods
    ext = case backend.to_s
      when 'Delayed::Job' then 'WithDelayedJob'
    end
    require_relative "queue/#{ext.underscore}"
    "Tower::Queue::#{ext}".constantize
  end
  
  def backend
    @backend ||= find_backend
  end
  
  # returns current backend class, e.g. Delayed::Job
  def find_backend
    return Delayed::Job if defined?(Delayed::Job)
    raise LoadError, "Tower::Queue requires delayed_job or resque gem"
  end
  
  ## Add
  # should be overriden in backend module
  # see Tower::Queue:WithDelayedJob for example
  def add(service,*args)
    raise NotImplementedError, "#add method not defined in #{backend_instance_methods}"
  end
  
  
  
end