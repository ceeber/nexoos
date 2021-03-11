class Requester < ApplicationRecord
  has_many :loan
  has_many :credit
   
  
  validates :nome, presence: true
  validates :cnpj, presence: true
  validates :telefone, presence: true
  validates :telefone2, presence: true
  validates :nascimento, presence: true
  validates :endereco, presence: true
  validates :endereco2, presence: true
  validates :numero, presence: true
  validates :uf, presence: true
  
end
