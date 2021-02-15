class HoroscopesController < ApplicationController
  def index
    @horoscopes = Horoscope.all
  end
  
  def show
  end
end
