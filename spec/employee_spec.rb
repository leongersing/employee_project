require 'spec_helper'

class ContractEmployee
  def initialize(hourly_rate)
  end
end

class FullTimeEmployee

  def initialize(salary)
    @salary = salary
  end
  
  def interval_rate
    @salary/52
  end
  
end

class BillingDepartment
  def self.pay(employee, hours_worked=40)
    
  end
end


describe ContractEmployee do
  it "should bill the hourly rate up to 40 hours a week" do
    jon = ContractEmployee.new(120)

    BillingDepartment.pay(jon, 37)

    report = BillingDepartment.audit(jon)

    report.should be_paid_in_full
    report.last_invoice_total.should == (120*37)
  end
  
  it "should bill time+.5 after 40 hours"
end


describe FullTimeEmployee do
  it "should be paid a weekly salary based on yearly" do
    jim = FullTimeEmployee.new(80000)
    BillingDepartment.pay jim

    report = BillingDepartment.audit(jim)

    report.should be_paid_in_full
    report.last_invoice_total.should == jim.interval_rate
  end
end
