require 'rails_helper'

RSpec.describe Requester, type: :model do
  
  subject {
    Requester.new(nome: "Alex Sandro",
                  cnpj: "44403840000170",
                  telefone: "41 92347212",
                  nascimento: "12/04/1983",
                  id: "2")
  }
  
  
  it "is not valid without a nome" do
    
    subject.nome = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a cnpj" do
      
  subject.cnpj = nil
  expect(subject).to_not be_valid
  end
  
  it "is not valid without a telefone" do
   
  subject.telefone = nil
  expect(subject).to_not be_valid
  
  end
  
  it "is not valid without a nascimento" do
    
  subject.nascimento = nil
  expect(subject).to_not be_valid
  end
  
  it "is not valid without a id" do
  
  auction = Requester.new(id: nil)
  expect(auction).to_not be_valid
  
  end
   
   
end
