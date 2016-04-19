class AsciisController < ApplicationController
	def new
		render 'new'
	end

	def create
		a = Artii::Base.new :font => 'slant'
		@word = a.asciify(params[:asciistext])
		render 'asciistext'
	end
end
