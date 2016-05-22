class PlatesController < ApplicationController
    before_action :authenticate_user!
    after_action :verify_authorized

    def index
      @plates = Plate.order(:name).all
      authorize User
    end

    def new
      @plate = Plate.new
    end

    def create
      @plate = Plate.new(plate_params)
      if @plate.save
        redirect_to @plate
      else
        render 'new'
      end
    end

    def show
      @plate = Plate.find(params[:id])
    end

    def edit
      @plate = Plate.find(params[:id])
    end

    def update
      @plate = Plate.find(params[:id])
      if @plate.update(plate_params)
        redirect_to @plate
      else
        render 'edit'
      end
    end

    def destroy
      @plate = Plate.find(params[:id])
      @plate.destory
      redirect_to plate_path
    end

    private
      def plate_params
        params.require(:plate).permit(:user_id, :plate)
      end
  end





end
