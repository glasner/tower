class Tower::Queue
  
  @@current = new
  
  def self.add(service,*args)
    @@current.add service, *args
  end
  
  private 
  
  def self.backend_instance_methods
    ext = case backend.to_s
      when 'Delayed::Job' then 'WithDelayedJob'
    end
    
    require_relative "queue/#{ext.underscore}"
    
    "Tower::Queue::#{ext}".constantize
  end
  
  def self.backend
    @backend ||= find_backend
  end
  
  def self.find_backend
    return Delayed::Job if defined?(Delayed::Job)
    raise LoadError, "Tower::Queue requires delayed_job or resque gem"
  end
  
  include backend_instance_methods
  
end