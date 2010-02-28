class FullTimeEmployee < Employee

  def initialize(salary)
    @salary = salary
  end
  
  def weekly_rate
    @salary/52
  end
  
end

