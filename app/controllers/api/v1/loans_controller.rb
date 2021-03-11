class Api::V1::LoansController < ApplicationController
  def create
    
   service_loan = ::CreateLoanService.new(request_params).create

    if service_loan
      
      render json: {status: 'SUCCESS', message:'Saved loan', data:service_loan},status: :ok
    else
      
      render json: {status: 'ERROR', message:'Loan not saved', data:service_loan},status: :Erro
    end
    
  end
  
  def show
            
      service_loan = Plot.joins(:loan).where(plots: { loan_id: params[:id]})
     
      render json: {status: 'SUCCESS', message:'Loaded article', data:service_loan},status: :ok 
          
  end
  
  private
  
  def request_params
    params.require(:loan).permit(:valor, :prazo, :taxa, :credit_id) 
  end
end
