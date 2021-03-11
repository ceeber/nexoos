class Plot < ApplicationRecord
  belongs_to :loan
  
  validates :parcela , presence: true
  validates :valorParcela , presence: true
  validates :pago , presence: true
  validates :vencimento , presence: true
 
end
