class WelcomeController < ApplicationController
  def index
    @states = State.all
  end

  def display
    @full_name = display_params[:full_name]
    @email = display_params[:email]
    @date_of_birth = display_params[:date_of_birth]
  end
end

private

def display_params
  params.permit(:full_name, :email, :date_of_birth)
end
