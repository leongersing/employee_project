class BillingDepartment
  def self.pay(employee, hours_worked=nil)
    total = payment_total(employee, hours_worked)
    Paycheck.new(total, employee)
  end

  private
  def self.payment_total(employee, hours_worked)
    if hours_worked
      if hours_worked > 40
        return employee.hourly_rate * (40 + ((hours_worked-40)/2))
      else
        return employee.hourly_rate * hours_worked
      end
    else
      return employee.weekly_rate
    end   
  end
  
end

