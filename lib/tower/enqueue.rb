class Tower::Enqueue << Tower::Service
  
  takes :service, :args
  
  def run
    send "create_#{@use}", *args
  end
  
  def add(service,*args)
    
  end
  
  def create_delayed_job(service,*args)
    Delayed::Job.enqueue service.new(*args)
  end
  
  def create_resque_job(service,*args)
    Resque.enqueue service, *args
  end
  
end