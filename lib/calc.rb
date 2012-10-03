require "calc/version"

module Calc

  class C

    def initialize
      reset
    end

    def get(*args)
      @arguments += args.flatten
    end

    def plus
      result = @arguments.inject(0, :+)
      reset
      result
    end

    def minus
      -plus
    end

    private

    def reset
      @arguments = []
    end

  end
end
