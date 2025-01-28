require "sinatra"
require "sinatra/reloader"

def game(user, comp)
  if user == comp
    return "We tied!"
  elsif (user == "rock" && comp == "scissors") ||
        (user == "paper" && comp == "rock") ||
        (user == "scissors" && comp == "paper")
    return "We won!"
  else
    return "We lost!"
  end
end

get("/") do
  erb(:rules)
end

get("/rock") do
  move = rand(1..3)
  if move == 1
    @move = "rock"
  elsif move == 2
    @move = "paper"
  elsif move == 3
    @move = "scissors"
  end
  @result = game("rock", @move)
  erb(:rock)
end

get("/paper") do
  move = rand(1..3)
  if move == 1
    @move = "rock"
  elsif move == 2
    @move = "paper"
  elsif move == 3
    @move = "scissors"
  end
  @result = game("paper", @move)
  erb(:paper)
end

get("/scissors") do
  move = rand(1..3)
  if move == 1
    @move = "rock"
  elsif move == 2
    @move = "paper"
  elsif move == 3
    @move = "scissors"
  end
  @result = game("scissors", @move)
  erb(:scissors)
end
