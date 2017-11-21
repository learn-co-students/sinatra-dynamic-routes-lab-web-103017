require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    str = ''
    @num.times {str << @phrase}
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  arr = params.map {|key, word| word}
  arr.join(' ') + '.'
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @op = params[:operation]
    hash = {"add" => @num1 + @num2,
            "subtract" => @num1 - @num2,
            "divide" => @num1 / @num2,
            "multiply" => @num1 * @num2}
    hash[@op].to_s
  end

end
