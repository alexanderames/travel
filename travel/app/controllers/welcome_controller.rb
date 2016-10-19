class WelcomeController < ApplicationController
  def index
  	@homestate = 'Arizona'
  	@countries = ['Canada', 'United States', 'Mexico']
  	@images = ['merica.jpg', 'mexico.jpg', 'tulips.jpg']
  end

  def abouts
  	@color = params[:color]
  	@shoe_size = params[:size]
  end
end
