class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
  rps_hash = {"R"=>"S","S"=>"P","P"=>"R"}
  strategy = rps_hash.keys
  raise NoSuchStrategyError if not (strategy.include?(m1[1]) and strategy.include?(m2[1]))
  
  return m1 if m1[1] == m2[1]

  if rps_hash[m1[1]] == m2[1]
   return m1
  else
   return m2
  end
end

def rps_game_winner(game)
  # YOUR CODE HERE
  raise WrongNumberOfPlayersError unless game.length == 2
  m1 = game[0]
  m2 = game[1]
  return rps_result(m1,m2)
end

def rps_tournament_winner(game)
  # YOUR CODE HERE
  if game[0][0].class == String
    return rps_game_winner(game)
  else
    return rps_result(rps_tournament_winner(game[0]), rps_tournament_winner(game[1]))
  end
end

