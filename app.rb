require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    name = params[:name].reverse
  end
  get '/square/:number' do
    square_number = params[:number].to_i 
    square_number.to_s 
  end
  get '/say/:number/:phrase' do
    number = params[:number]
    phrase = params[:phrase]
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = params[:word1, :word2, :word3, :word4, :word5]
    "#{words}"
  end
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == "add"
      number1 + number2
    elsif operation == "subtract"
      number1 - number2
    elsif operation == "multiply"
  end
end

