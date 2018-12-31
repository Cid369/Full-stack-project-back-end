# frozen_string_literal: true

class SpecialsController < OpenReadController
  before_action :set_special, only: %i[show update destroy]

  # GET /specials
  def index
    @specials = current_user.specials

    render json: @specials
  end

  # GET /specials/1
  def show
    @specials = current_user.specials

    render json: @special
  end

  # POST /specials
  def create
    @special = current_user.specials.build(special_params)

    if @special.save
      render json: @special, status: :created, location: @special
    else
      render json: @special.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /specials/1
  def update
    if @special.update(special_params)
      render json: @special
    else
      render json: @special.errors, status: :unprocessable_entity
    end
  end

  # DELETE /specials/1
  def destroy
    @special = current_user.specials.find(params[:id])
    @special.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_special
    @special = current_user.special.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def special_params
    params.require(:special).permit(:name, :description)
  end
end
