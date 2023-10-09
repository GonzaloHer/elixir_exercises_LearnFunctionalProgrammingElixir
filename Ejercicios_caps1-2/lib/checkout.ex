defmodule Ecommerce.Checkout do #es buena practica poner nombre de la workspace.nombreModulo

def total_cost(price, tax_rate) do
  price * (tax_rate + 1)
end

end
