require "calc/version"

module Calc

  class C

    def initialize
      @arguments = []
    end

    def get(*args)
      @arguments += args.flatten
    end

    def plus
      @arguments.inject(:+)
    end

    def minus
      -@arguments.inject(:+)
    end

  end
end
