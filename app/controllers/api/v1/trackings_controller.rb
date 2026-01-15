class API::V1::TrackingsController < ApplicationController
  before_action :set_tracking, only: [:show, :update, :destroy]

  def index
    @tracking = Tracking.all
    render json: @tracking, include: [:statuses]
  end

  def create
    @tracking = Tracking.new(tracking_params)
    if @tracking.save
      render json: @tracking, status: :created
    else
      render json: @tracking.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @tracking, include: [:statuses]
  end

  def update
    if @tracking.update(tracking_params)
      render json: @tracking
    else
      render json: @tracking.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @tracking.destroy
  end

  private

  def set_tracking
    @tracking = Tracking.find(params[:id])
  end

  def tracking_params
    params.require(:tracking).permit(:codigo, :descricao, statuses_attributes: [:status, :data, :hora, :origem, :destino, :local])
  end
end