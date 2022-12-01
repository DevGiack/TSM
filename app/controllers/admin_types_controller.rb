class AdminTypesController < ApplicationController
  before_action :set_admin_type, only: %i[ show edit update destroy ]

  # GET /admin_types or /admin_types.json
  def index
    @admin_types = AdminType.all
  end

  # GET /admin_types/1 or /admin_types/1.json
  def show
  end

  # GET /admin_types/new
  def new
    @admin_type = AdminType.new
  end

  # GET /admin_types/1/edit
  def edit
  end

  # POST /admin_types or /admin_types.json
  def create
    @admin_type = AdminType.new(admin_type_params)

    respond_to do |format|
      if @admin_type.save
        format.html { redirect_to admin_type_url(@admin_type), notice: "Admin type was successfully created." }
        format.json { render :show, status: :created, location: @admin_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_types/1 or /admin_types/1.json
  def update
    respond_to do |format|
      if @admin_type.update(admin_type_params)
        format.html { redirect_to admin_type_url(@admin_type), notice: "Admin type was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_types/1 or /admin_types/1.json
  def destroy
    @admin_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_types_url, notice: "Admin type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_type
      @admin_type = AdminType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_type_params
      params.fetch(:admin_type, {})
    end
end
