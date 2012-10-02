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
      result = @arguments.inject(0) { |init,r| init + r }
      reset
      result
    end

    def minus
      result = - @arguments.inject(0) { |init,r| init + r }
      reset
      result
    end

    private

    def reset
      @arguments = []
    end

  end
end
