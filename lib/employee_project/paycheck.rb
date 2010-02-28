class Paycheck
  attr_accessor :total, :to, :from, :date
  def initialize(total, to, from = "The Billing Department", date = Time.now)
    @total = total
    @to = to
    @from = from
    @date = date
  end
end
