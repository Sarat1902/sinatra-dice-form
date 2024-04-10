require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/process_roll") do

 @dice = params.fetch("dice")
 @sides = params.fetch("sides")

 erb(:results)
 
end
