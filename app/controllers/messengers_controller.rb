class MessengersController < ApplicationController
  before_action :set_messenger, only: [:show, :edit, :update, :destroy]
  access user: [:create], admin: :all

  # GET /messengers
  def index
    @messengers = Messenger.all
  end

  # GET /messengers/1
  def show
  end

  # GET /messengers/new
  def new
    @messenger = current_user.messengers.new
  end

  # GET /messengers/1/edit
  def edit
  end

  # POST /messengers
  def create
    @messenger = current_user.messengers.new(messenger_params)

    if @messenger.save
      redirect_to root_path, notice: 'Message was sent.'
    else
      render :new
    end
  end

  # PATCH/PUT /messengers/1
  def update
    if @messenger.update(messenger_params)
      redirect_to @messenger, notice: 'Messenger was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /messengers/1
  def destroy
    @messenger.destroy
    redirect_to messengers_url, notice: 'Messenger was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messenger
      @messenger = Messenger.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def messenger_params
      params.require(:messenger).permit(:message)
    end
end
