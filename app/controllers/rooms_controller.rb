class RoomsController < ApplicationController
  # after_create_commit :broadcast_if_public
  def index
    @room = Room.new
    @current_user = current_user
    redirect_to '/signin' unless @current_user
    @rooms = Room.public_rooms
    @users = User.all_except(@current_user)
  end

  def create
    @room = Room.create(name: params["room"]["name"])
  end

  def show
  @current_user = current_user
  @rooms = Room.public_rooms
  @users = User.all_except(@current_user)
  @room = Room.new
  @single_room = Room.find(params[:id])
  @messages = @single_room.messages.includes(:user)
  render "index"
end

end
