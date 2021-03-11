class Credit < ApplicationRecord
  belongs_to :requester 
  has_many :loans
  
  validates :valor , presence: true
  
  
end
