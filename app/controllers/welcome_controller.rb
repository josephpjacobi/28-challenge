class WelcomeController < ApplicationController
  def index
    @states = State.all
  end

  def products 
    @categories = Category.all
    @full_name = products_params[:full_name]
    @email = products_params[:email]
    @date_of_birth = products_params[:date_of_birth]
    @state_abbreviation = State.find_by(full_name: products_params[:state][:id]).abbreviation
  end

  def success
    @products = success_params
    @hidden_params = hidden_params
  end
end


private

def products_params
  params.permit(:full_name, :email, :date_of_birth, state: [:id] )
end

def success_params
  params.permit("Birth Control", "Emergency Contraception", "Testing Kits", "OTC Products")
end

def hidden_params
  params.permit(:full_name, :email, :dob, :state)
end
