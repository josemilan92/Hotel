class EventsController < ApplicationController

  def index
    @events = Event.all
    @tasks = Event.all
  end

  private

    def event_params
      params.require(:event).permit(:title, :start, :end)
    end
end

