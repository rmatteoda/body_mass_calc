class BodyMassController < ApplicationController
  include BodyMassHelper

  def index
  end

  def calculate
  	weight = params[:weight].to_f
  	height = params[:height].to_f
  	#flash[:success] = "Nodo Eliminado"
  	@bmi = calculate_bmi(weight, height)
  	render 'show'
  end
end
