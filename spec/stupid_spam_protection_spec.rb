require "spec_helper"

describe StupidSpamProtection do
  it "should add robot attribute" do
    class Stuff < ActiveRecord::Base
      include ActiveRecordNoTable
    end

    item = Stuff.new
    item.should_not respond_to :robot
    item.should_not respond_to :robot=

    Stuff.send(:extend, StupidSpamProtection)

    item = Stuff.new
    item.should respond_to :robot
    item.should respond_to :robot=
  end

  it "should validate empty of robot attribute" do
    class Item < ActiveRecord::Base
      include ActiveRecordNoTable

      extend StupidSpamProtection
    end

    item = Item.new
    item.should be_valid
    item.robot = "whatever"
    item.should_not be_valid
    item.errors[:robot].should have(1).item
  end
end