class Produto < ActiveRecord::Base
  validates_presence_of :nome, :descricao, :valor, :message => " deve ser preenchido"
  validates_numericality_of :valor, :greater_than => 0, :message => " deve ser um número maior que 0"

  has_attached_file :foto, :styles => {:mini => "80x80>", :media => "300x300>", :original => "400x400"}
end

