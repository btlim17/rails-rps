class GameController < ApplicationController
  def player_moves
    render({:template => "game_templates/player_moves"})
  end
  def user_played_rock
    moves = ["rock", "paper", "scissors"]
    @computer_move = moves.sample

    if @computer_move == "rock"
      @outcome = "We tied!"
    elsif @computer_move == "paper"
      @outcome = "We lost!"
    else 
      @outcome = "We won!"
    end

    render({:template => "game_templates/play_rock"})
  end
  def user_played_paper
    moves = ["rock", "paper", "scissors"]
    @computer_move = moves.sample

    if @computer_move == "rock"
      @outcome = "We won!"
    elsif @computer_move == "paper"
      @outcome = "We tied!"
    else 
      @outcome = "We lost!"
    end

    render({:template => "game_templates/play_paper"})
  end

  def user_played_scissors
    moves = ["rock", "paper", "scissors"]
    @computer_move = moves.sample
    if @computer_move == "rock"
      @outcome = "We lost!"
    elsif @computer_move == "paper"
      @outcome = "We won!"
    else 
      @outcome = "We tied!"
    end

  render({:template => "game_templates/play_scissors"})
  end
end
