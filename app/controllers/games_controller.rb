class GamesController < ApplicationController
  def home
  end

  def rock
    play("rock")
  end

  def paper
    play("paper")
  end

  def scissors
    play("scissors")
  end

  private

  def play(player_choice)
    result = get_results_and_computers_move(player_choice)
    @player = player_choice.capitalize
    @results = result[:results]
    @computer = result[:computer].capitalize
    render player_choice
  end

  def get_move_name(int)
    ['rock', 'paper', 'scissors'][int - 1]
  end

  def get_results_and_computers_move(player)
    player_index = ['rock', 'paper', 'scissors'].index(player) + 1
    results = 'tied'
    computer = rand(1..3)
    if player_index > computer
      results = 'won'
    elsif player_index < computer
      results = 'lost'
    end
    { results: results, computer: get_move_name(computer) }
  end
end
