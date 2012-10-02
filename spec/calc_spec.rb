require 'spec_helper'

describe Calc do

  let(:c) { Calc::C.new }

  describe "get method" do
    it "should receive array as argument" do
      argument1 = [1,2,3]
      c.get(argument1).should == argument1
      argument2 = [4,5,6]
      c.get(argument2).should == argument1 + argument2
    end

    it "should receive number as argument" do
      argument1 = 1
      c.get(argument1).should == [argument1]
      argument2 = 2
      c.get(argument2).should == [argument1, argument2]
    end
  end

  describe "plus method" do
    it "should summarize numbers for the array argument" do
      argument = [1,2,3]
      c.get(argument)
      c.plus.should == 6
    end

    it "should summarize numbers for the number argument" do
      c.get(6)
      c.get(5)
      c.plus.should == 11
    end
  end

  describe "minus method" do
    it "should subtract numbers for the array argument" do
      argument = [3,2,1]
      c.get(argument)
      c.minus.should == -argument.inject(:+)
    end

    it "shoule subtract numbers fro the number argument" do
      c.get(3)
      c.get(7)
      c.minus.should == -10
    end
  end

  describe "cleaning the stack" do
    it "plus method" do
      c.get(5)
      c.get(10)
      c.plus
      c.plus.should == 0
    end

    it "minus mehtod" do
      c.get(6)
      c.get(34)
      c.minus
      c.minus.should == 0
    end
  end
end