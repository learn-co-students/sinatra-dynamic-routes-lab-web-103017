require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{Integer(@number) * Integer(@number)}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number]
    phrase = ""

    @number.to_i.times do
      phrase += @phrase
    end

    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1]
    @number2 = params[:number2]
    @operation = params[:operation]
    if @operation == 'add'
      return String(Integer(@number1) + Integer(@number2))
      binding.pry
    elsif @operation == 'subtract'
      return String(Integer(@number1) - Integer(@number2))
    elsif @operation == 'divide'
      return String(Integer(@number1)/ Integer(@number2))
    elsif @operation == 'multiply'
      return String(Integer(@number1)* Integer(@number2))
    end

  end

end
