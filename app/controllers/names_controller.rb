class NamesController < ApplicationController
  def index
    @capitalized_name = params[:name].upcase

    if @capitalized_name.downcase[0] == "a"
      @message = "Hey, your name starts with the first letter of the alphabet"
    end
  end

  def number_game
    secret = 55
    user_guess = params[:guess].to_i

    if user_guess < secret
      @less_message = "Your guess is too low"
    elsif user_guess > secret
      @greater_message = "Your guess is too high"
    else
      @bingo_message = "Bingo! Your guess is correct!"
    end
  end
    
end