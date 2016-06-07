class InvitationsController < ProtectedController
  before_action :set_invitation, only: [:show, :update, :destroy]

  # GET /invitations
  # GET /invitations.json
  def index
    @invitations = Invitation.all

    render json: @invitations
  end

  # GET /invitations/1
  # GET /invitations/1.json
  def show
    render json: @invitation
  end

  # POST /invitations
  # POST /invitations.json
  def create
    # puts "Current User is: #{current_user[:id]}"
    # print "Params: #{invitation_params}"
    # invitation_params[:invitation][:user_id] = 1 if invitation_params[:invitation][:user_id] == nil
    # print "Params: #{invitation_params}"

    @invitation = Invitation.new(invitation_params)

    if @invitation.save
      render json: @invitation, status: :created, location: @invitation
    else
      render json: @invitation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invitations/1
  # PATCH/PUT /invitations/1.json
  def update
    @invitation = Invitation.find(params[:id])

    if @invitation.update(invitation_params)
      head :no_content
    else
      render json: @invitation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invitations/1
  # DELETE /invitations/1.json
  def destroy
    @invitation.destroy

    head :no_content
  end

  private

    def set_invitation
      @invitation = Invitation.find(params[:id])
    end

    def invitation_params
      params.require(:invitation).permit(:user_id, :trip_id, :status)
    end
end
