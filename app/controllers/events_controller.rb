class EventsController < ActionController::API

  def create
    @event = Event.first || Event.new
    @event.data = @event.data.push(*params[:events])
    @event.save
    render json: { status: 'ok' }, status: :ok
  end

  def show
    @event = Event.first
  end


end