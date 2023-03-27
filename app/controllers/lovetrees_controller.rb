class LovetreesController < ApplicationController
	def show
		@lovetree=Lovetree.find(current_user.id)
		@calendars=Calendar.where(user:current_user)
		@size=@calendars.size
		@size2=@calendars.where("day > ?",Time.now.yesterday).size
		if @lovetree.growth>0  && @size2==0 then
			@lovetree.update(growth:-1,user:@lovetree.user,mode:1)
		else
			@lovetree.update(growth:@size*5,user:@lovetree.user,mode:1)
		end
	end
end
