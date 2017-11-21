require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    some_string = ""
    params[:number].to_i.times do
      some_string += "#{params[:phrase]}"
    end
    some_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(" ").strip}" +"."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == "add"
      (num1 + num2).to_s
    elsif params[:operation] == "subtract"
      (num1 - num2).to_s
    elsif params[:operation] == "multiply"
      (num1 * num2).to_s
    else params[:operation] == "divide"
      (num1 / num2).to_s
    end
  end

end
