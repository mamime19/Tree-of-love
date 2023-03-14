class LovetreesController < ApplicationController
	def show
		@lovetree=Lovetree.find(current_user.id)
	end
end
