module Tower::Queue::WithDelayedJob
  private
  def add(service,*args)
    Delayed::Job.enqueue service.new(*args)
  end
end