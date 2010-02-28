require 'spec_helper'

describe FullTimeEmployee do
  it "should be paid a weekly salary based on yearly" do
    jim = FullTimeEmployee.new(80000)
    pay_stub = BillingDepartment.pay jim

    pay_stub.total.should == 1538
  end
end
