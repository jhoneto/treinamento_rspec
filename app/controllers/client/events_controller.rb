class Client::EventsController < Client::BaseController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new    
  end

  def create
    @event = Event.new(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to client_events_path, notice: 'event criada com sucesso' }
      else
        format.html { render :new, error: 'Não foi possível criar a event'}
      end
    end
  end

  def edit
    @event = Event.find(params[:id])
    @comments = JSON.parse(HTTParty.get('https://jsonplaceholder.typicode.com/comments?postId=1').body)
  end

  def update
    @event = Event.find(params[:id])
    @event.assign_attributes(event_params)
    if @event.save
      redirect_to client_events_path
    else
      render 'edit'
    end
  end

 
  private
  def event_params
    params.require(:event).permit(:name, :description, :value, :start_date, :end_date, :vacancies)
  end

end
