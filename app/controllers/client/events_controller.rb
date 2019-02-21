class Client::EventsController < Client::BaseController
  #before_action :authenticate_user!

  def index
    @events = Event.all
  end
end
