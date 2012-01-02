require_relative '../spec_helper'

describe Tower::Queue do
  
  subject { Tower::Queue }
  
  describe 'loading class' do
    it '.backend should be memoized' do
      subject.should_receive(:find_backend).once.and_return Delayed::Job
      subject.backend.should == Delayed::Jo
      subject.backend
    end
    it 'should include .backend_instance_methods module'
    
    context 'with Delayed::Job' do
      
      it '.backend should return Delayed::Job'
      it '.backend_instance_methods should return Tower::Queue::WithDelayedJob'
    end
  
    context 'with Resque' do
      it '.backend should return Resque'
      it '.backend_instance_methods should return Tower::Queue::WithResque'
    end
  
    
  end
  

end
