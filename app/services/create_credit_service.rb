class CreateCreditService

 def initialize(params)
  @credit_params = params 
    
 end
 
 def create()  
   value_group = @credit_params.merge(:aceitar => 's', :data_credito => Time.new)
 
   @credit = Credit.create(value_group)
  
 end
 
 
 

end
