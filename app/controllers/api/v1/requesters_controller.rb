class Api::V1::RequestersController < ApplicationController
   
  def create
  
    service = ::CreateClientService.new(requesters_params).create

    if service
      
      render json: {status: 'SUCCESS', message:'Saved client', data:service},status: :ok
    else
      
      render json: {status: 'ERROR', message:'Client not saved', data:service},status: :unprocessable_entity
    end
  end

  private

  def requesters_params
    params.require(:requester).permit(:nome, :cnpj, :telefone, :telefone2, :nascimento, :endereco, :endereco2, :numero, :uf)
  end
  
end
