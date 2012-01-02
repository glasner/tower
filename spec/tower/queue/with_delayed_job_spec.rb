module Delayed; end
class Delayed::Job; end

require_relative '../../spec_helper'

describe 'Tower::Queue::WithDelayedJob' do
  
  subject { Tower::Queue.current }
  
  it '.backend should return Delayed::Job' do
    subject.send(:backend).should == Delayed::Job
  end
    
  it '.backend_instance_methods should return module for delayed job' do
    subject.send(:backend_instance_methods).should == Tower::Queue::WithDelayedJob
  end
  
  describe '#add' do
    
    def add(service,*args)
      subject.send :add, service, *args
    end
    
    before do
      @service = mock 'Tower::Service'
      Delayed::Job.stub(:enqueue).and_return true
    end
    
    it 'should be implemented' do
      lambda { add(@service) }.should_not raise_error(NotImplementedError)
    end
    
    it 'should take service class and splat of args' do
      lambda { add(@service) }.should_not raise_error(ArgumentError)
      lambda { add(@service,:one) }.should_not raise_error(ArgumentError)
      lambda { add(@service,:one,:two) }.should_not raise_error(ArgumentError)
    end
    
    it 'should enqueue given service to Delayed::Job' do
      args = [:one,:two]
      service_instance = mock('Tower::ServiceInstance')
      @service.should_receive(:new).with(*args).and_return service_instance
      Delayed::Job.should_receive(:enqueue).with(service_instance).and_return true
      add @service, *args
    end
  end
  
  
  
  
  
end
