defmodule FreelancerRates do

  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
# Float.parse(hourly_rate);
# hourly_rate * 8;
    hourly_rate * 8.0;
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
# before_discount - (before_discount * discount);
      before_discount*(100/100-discount/100);
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    val_month=apply_discount((daily_rate(hourly_rate))*22, discount);
# trunc(val);
    ceil(val_month);
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    val_budget=budget/monthly_rate(hourly_rate, discount)*22;
    trunc(val_budget*10)/10;
  end
end
