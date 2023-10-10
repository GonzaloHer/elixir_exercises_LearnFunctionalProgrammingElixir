defmodule IncomeTax do




  def income_calculator(income) do

    case income do
      income when income <= 2000 -> 0;
      income when income <= 3000 -> calculate_tax(income, 0.05)
      income when income <= 6000 -> calculate_tax(income, 0.10)
      income when income > 6000 -> calculate_tax(income, 0.15)
    end

  end

  def calculate_tax(income, tax) do
    income * tax
  end


end

defmodule SalaryTax do

  def salary_tax() do
    user_input = IO.gets "write your salary: "

    case Integer.parse(user_input) do
      :error -> "invalid input"
      {salary, _} -> net_wage = IncomeTax.income_calculator(salary) + salary
                     IO.puts "your nat_wage is #{net_wage} and your tax is #{IncomeTax.income_calculator(salary)}"
    end
  end
end
