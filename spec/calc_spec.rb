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
      argument = [1,2,3]
      c.get(argument)
      c.plus.should == 6
    end
  end

  describe "minus method" do
    it "should subtract numbers for the array argument" do


    end

    it "shoule subtract numbers fro the number argument" do


    end
  end

  describe "cleaning the stack" do
    it "plus method" do

    end

    it "minus mehtod" do

    end
  end
end