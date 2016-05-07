require 'bundler/setup'
require 'minitest/autorun'
require 'sweetify'

module FakeFlash
  class Flash
    attr_accessor :flash
  end
end

Sweetify.send :include, FakeFlash