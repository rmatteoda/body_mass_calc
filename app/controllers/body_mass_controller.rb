class BodyMassController < ApplicationController
  before_action :require_login
  include BodyMassHelper

  def index
  end

  def calculate
  	weight = params[:weight].to_f
  	height = params[:height].to_f
	@bmi = calculate_bmi(weight, height)

  	if @bmi.to_f > 25
  	  flash[:warning] = "You are Overweight"
    elsif @bmi.to_f < 18.5
  	  flash[:warning] = "You are Underweight"
  	else
  	  flash[:info] = "Congrats! your body mass index is Normal"
    end
      
  	render 'show'
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_url
    end
  end
end
