require_relative 'config/environment'

class App < Sinatra::Base
	get "/" do
		erb :user_input
	end

	post "/piglatinize" do
		pl = PigLatinizer.new
		pl.piglatinize(params[:user_phrase])
	end
end