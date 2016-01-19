require "sinatra"
require "artii"

get "/ascii/?:word?/?:font?" do
	@word = params[:word]
	@font = params[:font]
	if @font == nil
		@font = "acrobatic"
		else 
			@font = params[:font]
	end
	@a = Artii::Base.new :font => @font
	@newword = @a.asciify(@word)
	erb(:word)
end