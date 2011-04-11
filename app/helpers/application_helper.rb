module ApplicationHelper
  def valor_em_reais(valor)
    number_to_currency(valor, :unit => "R$ ", :separator => ",", :delimiter => ".")
  end
end

