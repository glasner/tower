module Tower::Queue::WithDelayedJob
  def add(service,*args)
    Delayed::Job.enqueue service.new(*args)
  end
end