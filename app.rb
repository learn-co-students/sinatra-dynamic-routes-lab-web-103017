require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
	end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get '/say/:number/:phrase' do
    @accumulator = ""
    @number = params[:number].to_i
    @phrase = params[:phrase].gsub('%20', ' ')
    @number.times{@accumulator += @phrase}
    "#{@accumulator}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @accumulator = []
    @accumulator << params[:word1]
    @accumulator << params[:word2]
    @accumulator << params[:word3]
    @accumulator << params[:word4]
    params[:word5] += '.'
    @accumulator << params[:word5]
    @accumulator.join(" ")
    #binding.pry
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if params[:operation] == 'add'
      "#{@number1 + @number2}"
    elsif params[:operation] == 'subtract'
      "#{@number1 - @number2}"
    elsif params[:operation] == 'multiply'
      "#{@number1 * @number2}"
    elsif params[:operation] == 'divide'
      "#{@number1 / @number2}"
    end
  end

end
