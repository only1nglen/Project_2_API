# frozen_string_literal: true

class PlacesToGosController < ProtectedController
  before_action :set_places_to_go, only: %i[show update destroy]

  # GET /places_to_gos
  def index
    @places_to_gos = PlacesToGo.all

    render json: @places_to_gos
  end

  # GET /places_to_gos/1
  def show
    render json: @places_to_go
  end

  # POST /places_to_gos
  def create
    @places_to_go = current_user.places_to_gos.build(places_to_go_params)

    if @places_to_go.save
      render json: @places_to_go, status: :created, location: @places_to_go
    else
      render json: @places_to_go.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /places_to_gos/1
  def update
    @places_to_go = current_user.places_to_gos.find(params[:id])

    if @places_to_go.update(places_to_go_params)
      render json: @places_to_go
    else
      render json: @places_to_go.errors, status: :unprocessable_entity
    end
  end

  # DELETE /places_to_gos/1
  def destroy
    @places_to_go.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_places_to_go
    @places_to_go = current_user.places_to_gos.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def places_to_go_params
    params.require(:places_to_go).permit(:name)
  end
end
