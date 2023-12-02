class DashboardController < ApplicationController
    def index
      @vehicle_count = Vehicle.count
    end
  end
  