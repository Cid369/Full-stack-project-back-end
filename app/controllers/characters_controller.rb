# frozen_string_literal: true

class CharactersController < OpenReadController
  before_action :set_character, only: %i[show update destroy]

  # GET /characters
  def index
    @characters = Character.all

    render json: @characters
  end

  # GET /characters/1
  def show
    render json: @character
  end

  # POST /characters
  def create
    @character = current_user.characters.build(character_params)

    if @character.save
      render json: @character, status: :created, location: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  def update
    @character =
      current_user.characters.update(character_params)
    if @character.update(character_params)
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1
  def destroy
    @character = current_user.characters.find(params[:id])
    @character.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_character
    @character = current_user.characters.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def character_params
    params.require(:character).permit(:name, :gender, :hp)
  end
end
