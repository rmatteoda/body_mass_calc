class BodyMassController < ApplicationController
  include BodyMassHelper

  def index
  end

  def calculate
  	weight = params[:weight].to_f
  	height = params[:height].to_f
	@status = "Normal"
  	@bmi = calculate_bmi(weight, height)

  	if @bmi.to_f > 25
  	  @status = "Overweight"
  	elsif @bmi.to_f < 18.5
  	  @status = "Underweight"
  	end

  	render 'show'
  end
end
