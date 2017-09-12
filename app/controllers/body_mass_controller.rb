class BodyMassController < ApplicationController
  def index
  end

  def mass
  	redirect_to root_url, notice: 'Body Mass Ok!'
  end
end
