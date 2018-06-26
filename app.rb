require_relative 'config/environment'

class App < Sinatra::Base
  get '/:name' do
   @user_name = params[:name]
   "waddup #{@user_name}"
  end# Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @result = @name.reverse
    @result
  end
  
  get '/square/:number' do 
    @number = params[:number]
    @result = @number.to_i * @number.to_i
    @result.to_s
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @result = ""
    @number.times do
      @result += "#{@phrase}\n"
    end
    @result
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @result = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
    @result
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
      if @operation = "add"
        @return = @number1.to_i + @number2.to_i
      elsif @operation = "subtract"
        @return = @number1.to_i - @number2.to_i
      elsif @operation = "multiply"
        @return = @number1.to_i * @number2.to_i
      elsif @operation = "divide"
        @return = @number1.to_i / @number2.to_i
      end
    @return.to_s
   end 

end
