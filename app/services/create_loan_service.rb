class CreateLoanService

 attr_accessor :plot
 
 def initialize(params)
  @loan_params = params 
    
 end
 
  
 def create
  
  
  credit = Credit.order('id desc').find_by(id: @loan_params[:credit_id])
    

         # Verifica se tem credito aprovado #
	  if credit.aceitar == 's'
 		 
  
	  	   # Verifica se valor solicitado é igual ou menor que o aprovado #	
		    if @loan_params[:valor].to_f <= credit.valor.to_f     
		    	 	                 	 	          
	 	          # Cria o emprestimo #
	 	          @loan = Loan.create(@loan_params)   
   			  
   			   # Criar as parcelas #   			   
   			   createplots(@loan)
   
	 	       
	 	    else 
	 	         
	 	    	#return '{"error":"Valor solicitado é maior que aprovado"}' 
		    end
          else
              return '{"error":"Has no approved credit"}'          
	  end
  
 end
 
 
 def check_plot(idp)
 
	 plot = Plot.where(loan_id: idp)
	  
	 plot.each do |p|
	  
	  if p.pago.to_s == "n" && Time.new > p.vencimento
	  # Tem parcela em aberto
	   return true
	  end
	  
  	 end  	 
  	 
 end
 
 
 def createplots(idloan)
        
     
   (1..idloan.prazo.to_json.to_i).each do |p|   
   
     @plot = Plot.new
        
     @plot.valorParcela = @loan_params[:valor].to_f * ((((1 + @loan_params[:taxa]) ** @loan_params[:prazo]) * @loan_params[:taxa]) / (((1 + @loan_params[:taxa]) ** @loan_params[:prazo]) - 1))
   
   	@plot.parcela = p   	
   	@plot.pago = 'a'
   	@plot.vencimento = Time.new + p.month
   	@plot.loan_id = idloan.id.to_json    
        
        @plot.save
   
   end
   
        
     return idloan.id.to_json
     
 end 
 
 
 

end
