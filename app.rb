=begin
require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get ("/rock") do
end

get ("/paper") do
end

get ("/scissors") do
end
=end

require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:rules)
end

get("/rock") do
  1.times do
    @move = rand(1..3)
    if @move == 1
      @move = "rock"
    elsif @move == 2
      @move = "paper"
    else
      @move = "scissors"
    end
  erb(:rock)
end
