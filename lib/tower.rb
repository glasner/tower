module Tower
  VERSION = '0.0.1'
end

module Delayed; end
class Delayed::Job; end

require 'rails'

require 'tower/service'
require 'tower/queue'
require 'tower/engine'
