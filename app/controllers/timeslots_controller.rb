class TimeslotsController < ApplicationController

def index
	
end

def create
	@timeslot = @restaurant.timeslots.build(
	:time => params[:restaurant][:time])

if @timeslot.save
	render "restaurants/show"

def show
	@timeslot = Timelost.find(params[:id])
end

end
