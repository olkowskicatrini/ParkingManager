
class ApplicationController < ActionController::Base
    before_action :set_parking_spot, only: %i[:show, :edit, :update, :destroy]
  
    def index
      @parking_spots = ParkingSpot.all
    end
  
    def show
    end
  
    def new
      @parking_spot = ParkingSpot.new
    end
  
    def create
      @parking_spot = ParkingSpot.new(parking_spot_params)
      if @parking_spot.save
        redirect_to parking_spots_path, notice: 'Vaga de estacionamento criada com sucesso.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @parking_spot.update(parking_spot_params)
        redirect_to parking_spots_path, notice: 'Vaga de estacionamento atualizada com sucesso.'
      else
        render :edit
      end
    end
  
    def destroy
      @parking_spot.destroy
      redirect_to parking_spots_path, notice: 'Vaga de estacionamento excluída com sucesso.'
    end
  
    private
  
    def set_parking_spot
      @parking_spot = ParkingSpot.find(params[:id])
    end
  
    def parking_spot_params
      params.require(:parking_spot).permit(:number, :status)
    end
  end
  