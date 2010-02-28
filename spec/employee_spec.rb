require 'spec_helper'

describe Employee do
  it "can have a name" do
    jim = Employee.new
    jim.respond_to?(:name).should be_true
  end
end

  


