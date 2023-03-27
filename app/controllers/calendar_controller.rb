class CalendarController < ApplicationController
	def index
		@number=Calendar.count
	end
	def show
		@calendars=Calendar.where(user:current_user)
		@calendar=Calendar.new
		@event_name=["感謝の言葉","愛情の言葉","プレゼント","デート"]
	end
	def create
		@calendar=Calendar.new(calendar_params)
		@calendar.user_id=current_user.id
		@calendar.type=params[:calendar][:type]
		@calendar.day=params[:calendar][:day]
		@lovetree=Lovetree.find(current_user.id)
		@lovetree.update(growth:@lovetree.growth,user:@lovetree.user,mode:1)
		if @calendar.save
      		redirect_back(fallback_location: root_path)
    	else
      		redirect_back(fallback_location: root_path)
    	end
	end
	def start_time
    	self.date_and_time
  	end
  	def end_time
    	self.meetingfinishtime
  	end
	private
	def calendar_params
		params.require(:calendar).permit(:type,:day)
	end
end
