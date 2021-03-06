class TripsController < ProtectedController
  READ_ACTIONS = [:show].freeze
  skip_before_action :authenticate, only: READ_ACTIONS
  # before_action :set_current_user, only: READ_ACTIONS
  before_action :set_trip, only: [:show, :update, :destroy, :invite]

  # GET /trips
  # GET /trips.json
  def index
    @trips = current_user.trips

    render json: @trips, include: 'invitations.user'
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    render json: @trip, include: 'invitations.user'
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id
    @trip.users << current_user
    p "Trip Participants Are..."
    puts @trip.users

    if @trip.save
      render json: @trip, status: :created, location: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    puts "Params for Update: "
    puts trip_params
    puts trip_params[:invitations]

    @trip = Trip.find(params[:id])

    if @trip.update(trip_params)
      head :no_content
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # Invite Users to the trip
  # For each user ID passed, finds the user associated with that ID and invites that user if not already invited
  def invite
    invitees = params['users']
    invitees.each do |user_id|
      user = User.find(user_id)
      @trip.users << user unless @trip.users.include?(user)
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy

    head :no_content
  end

  private

    def set_trip
      @trip = Trip.find(params[:id])
    end

    def trip_params
      params.require(:trip).permit(:name, :start_date, :end_date, :location, :description, :user_id, :invitations)
    end
end
