class FlatsController < ApplicationController

  def index 
    @flats = Flat.all
  end

  def new 
    @flat = Flat.new
  end

  def strong_params
    params.require(:flat).permit(:name, :address, :description, :number_of_guests, :price_per_night)
  end
end
