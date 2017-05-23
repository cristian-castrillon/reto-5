require "sinatra"

get "/" do
	@even_odd = []
	50.times do |counter|
		@even_odd << "#{counter + 1} Soy Par!" if (counter + 1).even?
		@even_odd << "#{counter + 1} Soy Impar!" if (counter + 1).odd?
	end
	erb :index
end