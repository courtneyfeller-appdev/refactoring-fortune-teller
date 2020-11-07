class ZodiacController < ApplicationController

  def infinity_and_beyond
    @sign = params.fetch("zodiac_sign").capitalize

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(:aries)
    @horoscope = this_zodiac.fetch(:horoscope)

    render({:template => "zodiac_templates/zodiac.html.erb"})
  end

 
end


