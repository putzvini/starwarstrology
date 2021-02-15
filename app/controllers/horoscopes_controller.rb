class HoroscopesController < ApplicationController
  def index
    @horoscopes = Horoscope.all
    @cards = (0..21).to_a.shuffle.take(3)
  end
  
  def show
    @horoscope = Horoscope.find(params[:id])

    @quotes = []
    unless @horoscope.id == 6
      3.times do
        @quotes << Faker::Movies::StarWars.unique.quote(character: @horoscope.name) 
      end
    else
      3.times do
        @quotes << Faker::Movies::StarWars.unique.wookiee_sentence
      end
    end
    Faker::Movies::StarWars.unique.clear
  end
end
