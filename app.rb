require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		@name = params[:name].reverse
		"#{@name}"
	end

	get '/square/:number' do
		@number = params[:number].to_i
		"#{@number*@number}"
	end

	get '/say/:number/:phrase' do
		str = ""
		@number = params[:number].to_i
		@phrase = params[:phrase]
		@number.times {str << @phrase}
		str
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		arr = []
		arr << params[:word1]
		arr << params[:word2]
		arr << params[:word3]
		arr << params[:word4]
		arr << params[:word5]
		"#{arr.join(" ")}."
	end

	get '/:operation/:number1/:number2' do
		@operation = params[:operation]
		@number1 = params[:number1].to_i
		@number2 = params[:number2].to_i
		if @operation == "add"
			"#{@number1+@number2}"
		elsif @operation == "subtract"
			"#{@number1-@number2}"
		elsif @operation == "multiply"
			"#{@number1*@number2}"
		else "#{@number1/@number2}"
		end
	end

end
