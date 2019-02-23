class Api::EventsController < Api::BaseController

  def index
    @events = Event.all
    render json: @events
  end

end