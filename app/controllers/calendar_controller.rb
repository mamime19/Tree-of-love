class CalendarController < ApplicationController
	def show
		@calendars=Calendar.all
	end
end
