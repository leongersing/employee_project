require 'spec_helper'

describe ContractEmployee do
  it "should bill the hourly rate up to 40 hours a week" do
    jon = ContractEmployee.new(120)
    pay_stub = BillingDepartment.pay(jon, 37)

    pay_stub.total.should == 4440
  end
  
  it "should bill time+.5 after 40 hours" do
    jon = ContractEmployee.new(120)
    pay_stub = BillingDepartment.pay(jon, 50)

    pay_stub.total.should == 5400
  end
  
end
