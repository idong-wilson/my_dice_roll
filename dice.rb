require 'sinatra'
require 'sinatra/reloader'

def roll_dice(num, sides)
  rolls = []
  num.times { rolls << rand(1..sides) }
  rolls
end

def format_outcome(dice, rolls)
  total = rolls.sum
  "You rolled #{dice}d#{rolls.length}: #{rolls.join(', ')} for a total of #{total}."
end

get '/' do
  links = [
    "<li><a href='/dice/2/10'>Roll 2d10</a></li>",
    "<li><a href='/dice/1/20'>Roll 1d20</a></li>",
    "<li><a href='/dice/5/4'>Roll 5d4</a></li>",
    "<li><a href='/dice/1/4'>Roll 1d4</a></li>",
    "<li><a href='/dice/1/6'>Roll 1d6</a></li>",
    "<li><a href='/dice/1/8'>Roll 1d8</a></li>",
    "<li><a href='/dice/2/10'>Roll 2d10</a></li>",
    "<li><a href='/dice/1/12'>Roll 1d12</a></li>",
    "<li><a href='/dice/1/20'>Roll 1d20</a></li>"
  ]
  
  "<div style='width: 340px; height: 280px; padding-top: 20px; box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.5); margin: 50px auto; text-align: center;'><h1>Dice Roll</h1><ul style='list-style-type: none; padding: 0;'>#{links.join}</ul></div>"
end

get '/dice/:num/:sides' do
  num = params[:num].to_i
  sides = params[:sides].to_i

  rolls = roll_dice(num, sides)
  outcome = format_outcome(num, rolls)

  "<h1>#{num}d#{sides}</h1>
   <p>#{outcome}</p>"
end
