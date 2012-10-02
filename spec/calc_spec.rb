require 'spec_helper'

describe Calc do

  let(:c) { Calc::C.new }

  describe "get method" do
    it "should receive array as argument" do
      argument = [1,2,3]
      c.get(argument).should == argument
    end

    it "should receive number as argument" do
      argument = 1
      c.get(argument).should == argument
    end
  end

  describe "plus method" do
    it "should summarize numbers for the array argument" do

    end

    it "should summarize numbers for the number argument" do

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