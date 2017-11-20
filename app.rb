require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    @name
  end

  get '/square/:number' do
    @number = params[:number].to_i
    square = @number**2
    square.to_s
  end

  get '/say/:number/:phrase' do
    phrases = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times{|i| phrases += @phrase}
    phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    sol = 0
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    @op = params[:operation]
    # binding.pry
    if @op == "add"
      sol = @n1 + @n2
    elsif @op == "subtract"
      sol = @n1 - @n2
    elsif @op == "multiply"
      sol = @n1 * @n2
    elsif @op == "divide"
      sol = @n1 / @n2
    end
    "#{sol}"
  end
end
