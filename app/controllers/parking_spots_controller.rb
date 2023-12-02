# app/controllers/parking_spots_controller.rb
class ParkingSpotsController < ApplicationController
  before_action :set_parking_spot, only: [:show, :edit, :update, :destroy]

  def index
    @parking_spots = ParkingSpot.all
    @new_parking_spot = ParkingSpot.new
  end

  def show
    # Lógica para mostrar os detalhes da vaga de estacionamento
  end

  def new
    @new_parking_spot = ParkingSpot.new
    @vehicles = Vehicle.all
  end

  def create
    @new_parking_spot = ParkingSpot.new(parking_spot_params)

    if @new_parking_spot.save
      redirect_to parking_spots_path, notice: 'Vaga de estacionamento criada com sucesso.'
    else
      render :new
    end
  end

  def edit
    # Lógica para editar a vaga de estacionamento
  end

  def update
    if @new_parking_spot.update(parking_spot_params)
      redirect_to parking_spots_path, notice: 'Vaga de estacionamento atualizada com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @new_parking_spot.destroy
    redirect_to parking_spots_path, notice: 'Vaga de estacionamento excluída com sucesso.'
  end

  private

  def set_parking_spot
    @new_parking_spot = ParkingSpot.find(params[:id])
  end

  def parking_spot_params
    params.require(:parking_spot).permit(:number, :status, :vehicle_id)
  end
end
