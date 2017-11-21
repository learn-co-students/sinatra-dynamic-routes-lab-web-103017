require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    #hat accepts a name and renders the name backwards.
    name = params[:name]
    @reverse_name = name.reverse
    erb :reversename
  end

  get '/square/:number' do
    #that accepts a number and returns the square of that number. Note: Remember
    #that values in params always come in as strings, and your return value for
    #the route should also be a string (use .to_i and .to_s).
    @square = params[:number].to_i** 2

    erb :square
  end

  get '/say/:number/:phrase' do
    #Create a dynamic route at get '/say/:number/:phrase' that accepts a number
    #and a phrase and returns that phrase in a string the number of times given.
    @phrase_n_times = ""
    params[:number].to_i.times do
      @phrase_n_times += params[:phrase]
    end

    erb :say

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5'
    #that accepts five words and returns a string with them formatted as a sentence.
    links = [:word1, :word2, :word3, :word4, :word5]
    words =[]
    links.each do |link|
      words << params[link]
    end
      phrase = ""

     words.each do |word|
       phrase << "#{word} "
     end
     @phrase_n_times = phrase.strip
     @phrase_n_times<<"."
     erb :say
  end

  get '/:operation/:number1/:number2' do
    #that accepts an operashtion (add, subtract, multiply or divide) and performs
    #the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
    operator = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case operator
      when "add"
        @result = num1 + num2
      when "subtract"
        @result = num1 - num2
      when "divide"
        @result = num1 / num2
      when "multiply"
        @result = num1 * num2
      else
      end
      @result.to_s
      #binding.pry
      #erb :index
  end




end
