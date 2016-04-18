class TextinspectionsController < ApplicationController
	def new
		render 'new'
	end

	def create
  		@text = params[:text_inspection][:user_text]
  		@words = @text.split(" ")
  		@word_count = @words.length
  		@reading_time = @word_count/275
  		@frequency = Hash.new(0)
  		@words.each{|key| @frequency[key] += 1}
  		@frequency = @frequency.sort_by{|a,b| -b}.first(10)
    	render 'results'
	end
end
