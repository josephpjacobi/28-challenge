class WelcomeController < ApplicationController
  def index
  end

  def display
    @full_name = display_params[:full_name]
    @email = display_params[:email]
  end
end

private

def display_params
  params.permit(:full_name, :email)
end
