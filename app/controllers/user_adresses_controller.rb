class UserAdressesController < ApplicationController
  before_action :set_user_adress, only: %i[ show edit update destroy ]

  # GET /user_adresses or /user_adresses.json
  def index
    @user_adresses = UserAdress.all
  end

  # GET /user_adresses/1 or /user_adresses/1.json
  def show
  end

  # GET /user_adresses/new
  def new
    @user_adress = UserAdress.new
  end

  # GET /user_adresses/1/edit
  def edit
  end

  # POST /user_adresses or /user_adresses.json
  def create
    @user_adress = UserAdress.new(user_adress_params)

    respond_to do |format|
      if @user_adress.save
        format.html { redirect_to user_adress_url(@user_adress), notice: "User adress was successfully created." }
        format.json { render :show, status: :created, location: @user_adress }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_adress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_adresses/1 or /user_adresses/1.json
  def update
    respond_to do |format|
      if @user_adress.update(user_adress_params)
        format.html { redirect_to user_adress_url(@user_adress), notice: "User adress was successfully updated." }
        format.json { render :show, status: :ok, location: @user_adress }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_adress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_adresses/1 or /user_adresses/1.json
  def destroy
    @user_adress.destroy

    respond_to do |format|
      format.html { redirect_to user_adresses_url, notice: "User adress was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_adress
      @user_adress = UserAdress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_adress_params
      params.fetch(:user_adress, {})
    end
end
