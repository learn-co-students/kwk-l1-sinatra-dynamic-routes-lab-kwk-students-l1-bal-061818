require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
      @name = params[:name]
      @result = @name.reverse
      
      @result
  end
  
  get "/square/:number" do
    @number = params[:number]
    @result1 = @number.to_i * @number.to_i
    @result1.to_s
  end
  
  get "say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    nums = 0 
    while nums>@number
      @phrase
    end
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    return "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5} "
  end
  
  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      return @number1.to_i + @number2.to_i
    end
    if @operation == "multiply"
      return @number1.to_i * @number2.to_i
    end
    if @operation == "subtract"
      return @number1.to_i - @number2.to_i
    end
    if @operation == "divide"
      return @number1.to_i / @number2.to_i
    end
  end
  
end
