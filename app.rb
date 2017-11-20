require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name_reversed = params[:name].reverse
    "#{@name_reversed}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    erb :connect
  end

  get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      case @operation
      when "add"
        @total = @num1 + @num2
        "#{@total}"
      when "subtract"
        @total = @num1 - @num2
        "#{@total}"
      when "multiply"
        @product = @num1 * @num2
        "#{@product}"
      when "divide"
        @number = @num1 / @num2
        "#{@number}"
      end

  end

end
