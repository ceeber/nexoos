require 'rails_helper'

RSpec.describe Api::V1::RequestersController, type: :controller do

  describe 'User creates a new client' do
 
		 it "Create new client" do 
		  client = Requester.create( nome: "TecnoBill Sa",  cnpj:  "44403840000170", telefone: "41 92347212", telefone2: "41 92347212", nascimento: "12/04/1983",endereco: "Francisco Derosso",endereco2: "Francisco Derosso",numero: "23",uf: "PR") 
		  
		  expect(client['id']).to be_present
		  
 		end 
   
 
  end


end
