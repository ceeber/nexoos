class CreateClientService

 def initialize(params)
  @client_params = params 
  
 end
 
 def create()
  
    
  @requester = Requester.create(@client_params)  
  
 
    
 end
 

end
