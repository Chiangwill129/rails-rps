class GameController < ApplicationController
  def play_rock
    @random_move = ["rock", "paper", "scissors"].sample
    if @random_move == "rock"
      @outcome = "tied"
    elsif @random_move == "paper"
      @outcome = "lost"
    else @outcome = "won"
    end
        render({:template => "game_templates/play_rock"})
  end

  def play_paper
    @random_move = ["rock", "paper", "scissors"].sample
    if @random_move == "rock"
      @outcome = "won"
    elsif @random_move == "paper"
      @outcome = "tied"
    else @outcome = "lost"
    end
        render({:template => "game_templates/play_paper"})
  end

  def play_scissors
    @random_move = ["rock", "paper", "scissors"].sample
    if @random_move == "rock"
      @outcome = "lost"
    elsif @random_move == "paper"
      @outcome = "win"
    else @outcome = "tied"
    end
        render({:template => "game_templates/play_scissors"})
  end

  def rules
        render({:template => "game_templates/rules"})
  end
end
