class CitiesController < ApplicationController
    def new
        @city = current_user.cities.build
    end

    def create
        puts current_user.inspect
        @city = current_user.cities.build(city_params)
        if @city.save
          redirect_to root_path, notice: 'City was successfully created.'
        else
          render :new
        end
    end

    def index
        @cities = current_user.cities
    end

    private

    def city_params
        params.require(:city).permit(:name, :info, :photo)
    end
    
end