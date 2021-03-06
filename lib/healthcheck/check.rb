# frozen_string_literal: true

module Healthcheck
  class Check
    attr_accessor :name, :block

    def initialize(name, block)
      @name = name
      @block = block
    end

    def execute!
      block.call
    end
  end
end
