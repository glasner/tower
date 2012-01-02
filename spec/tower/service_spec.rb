require_relative '../spec_helper'

describe Tower::Service do
  
  describe '.takes' do
    context 'with args' do
      it 'should take a splat'
      it 'should save args to @takes'
    end
    context 'without args' do
      it 'should return @takes'
    end
  end
  
  context 'runners' do
  
    describe '.now' do
      it 'should take a splat'
      it 'should initialize a new Tower::Service instance'
      it 'should call instance.run'
    end
    
    describe '.later' do
      it 'should take a splat'
      it 'shouldl queue up service for later'
    end
    
  end
  
  describe '.new' do
    it 'should take a splat'
    it 'should create instance variables using names from self.class.takes'
  end
  
  describe '#run' do
    it 'should raise NotImplementedError'
  end
  
  
end
