require_relative 'config/environment'

class App < Sinatra::Base
  get '/:name' do
    @user_name = params[:name]
    "#{@user_name.capitalize} is the best!"
  end

  get '/reversename/:name' do
    @name = params[:name]
    @reversed = @name.reverse
    @reversed
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    return @phrase * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    return @words
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @op = params[:operation]
    if @op == "add"
      return (@num1+@num2).to_s
    elsif @op == "subtract"
      return (@num1-@num2).to_s
    elsif @op == "multiply"
      return (@num1*@num2).to_s
    else
      return (@num1/@num2).to_s
    end
  end

  get '/square/:number' do
    return (params[:number].to_i**2).to_s
  end

end
