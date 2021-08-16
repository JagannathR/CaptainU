class Api::V1::TournamentsController < ApplicationController
  before_action :set_api_v1_tournament, only: [:show, :update, :destroy]

  # GET /api/v1/tournaments
  def index
    @api_v1_tournaments = Api::V1::Tournament.all

    render json: @api_v1_tournaments
  end

  # GET /api/v1/tournaments/1
  def show
    render json: @api_v1_tournament
  end

  # POST /api/v1/tournaments
  def create
    @api_v1_tournament = Api::V1::Tournament.new(api_v1_tournament_params)

    if @api_v1_tournament.save
      render json: @api_v1_tournament, status: :created, location: @api_v1_tournament
    else
      render json: @api_v1_tournament.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/tournaments/1
  def update
    if @api_v1_tournament.update(api_v1_tournament_params)
      render json: @api_v1_tournament
    else
      render json: @api_v1_tournament.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/tournaments/1
  def destroy
    @api_v1_tournament.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_tournament
      @api_v1_tournament = Api::V1::Tournament.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_tournament_params
      params.require(:api_v1_tournament).permit(:name, :city, :state, :start_date)
    end
end
