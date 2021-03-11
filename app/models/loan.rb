class Loan < ApplicationRecord   
  belongs_to :credit
    
  validates :valor , presence: true
  validates :prazo , presence: true
  validates :taxa , presence: true
  
  
end
