class Api::V1::CreditsController < ApplicationController
  def create
    
    service = ::CreateCreditService.new(requesters_params).create

    if service
      
      render json: {status: 'SUCCESS', message:'Saved credit', data:service},status: :ok
    else
      
      render json: {status: 'ERROR', message:'Credit not saved', data:service},status: :unprocessable_entity
    end
  	
  end
  
  
  private

  def requesters_params
    params.require(:credit).permit(:valor, :requester_id)
  end
end
