class Api::ParameterController < ApplicationController
  def all_caps
    p "all caps"
    @name = params["name"].upcase
    if @name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet."
    end
    render 'capsfolder.json.jb'
    
  end

  def number_game
    
    @number = params[:number].to_i
    correct_answer = 36

    if @number > correct_answer
      @message = "you guessed too high"
    elsif @number < correct_answer
      @message = "you guessed too low"
    else
      @message = "you guessed correctly"
    end
    
    render 'segment.json.jb'
  end

  def body
    if params[:ssn].length == 9
      @message = "you typed it in correctly"
    else
      @message = "give me the real ssn"
    end
    render 'body.json.jb'
  end
  
end
