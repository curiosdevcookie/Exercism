defmodule FreelancerRates do

  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
    Float.parse(hourly_rate);
    hourly_rate * 8;
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
      before_discount*(100/100-discount/100);
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
  end
end
