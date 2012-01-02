require_relative '../spec_helper'

describe Tower::Queue do
  
  subject { Tower::Queue }
  
  describe 'initialize' do

    it 'should raise LoadError if delayed_job is missing' do
      lambda { subject.send :new }.should raise_error(LoadError)
    end
    
    context 'with Delayed::Job' do
      before do
        module Delayed; end
        class Delayed::Job; end
      end
      
      it 'should not raise LoadError if Delayed::Job exists' do
        lambda { subject.send :new }.should_not raise_error(LoadError)
      end
      it 'should extend instance with Tower::Queue::WithDelayedJob' do
        subject.send(:new).should be_kind_of(Tower::Queue::WithDelayedJob)
      end
    end
      
  end
  
  describe '.current' do
    
    it 'should exist' do
      subject.should respond_to(:current)
    end
    
    it 'should be instance of Tower::Queue' do
      subject.current.should be_kind_of(Tower::Queue)
    end
  end
  
  describe '.add' do
    def add(*args)
      subject.current.should_receive(:add).with(*args).and_return true
      subject.add *args
    end
    
    it 'should exist' do
      subject.should respond_to(:add)
    end
    
    it 'should call self.current.add with given args' do
      service = mock 'Service'
      add service
      add service, :one
      add service, :one, :two
    end
  end
  
  
  
  

end
