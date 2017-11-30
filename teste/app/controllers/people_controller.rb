class PeopleController < ApplicationController
  #action
  def index
  	@nome= "José Ricardo"
  	@numeros = [1,2,3,4]
  	@people = Person.all
  end

  	def new
		@person = Person.new
	end
	
	def create 
  	@person = Person.new(person_params) 
  	if @person.save 
    	redirect_to '/' 
  	else 
    	render 'new' 
  	end 
	end
	
	private 
  	def person_params 
    	params.require(:person).permit(:content) 
  	end
end