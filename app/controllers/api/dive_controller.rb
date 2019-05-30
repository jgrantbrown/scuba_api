class Api::DiveController < ApplicationController
  def index
    render json: Dive.all
  end

# CHECK IF EXISTS IN DB ?
  def create
    dive = Dive.new(dive_params)
    if dive.save
      render json: dive
    else
      render json: {message: dive.errors}, status: 400
    end
  end

  def show
      @dive = Dive.find_by(id: params[:id])
    render json: @dive
  end

  def dive_params
    params.require(:dive).permit(:date, :location ,:dive_no , :time_in, :time_out, :exposure_protection, :visibility, :computer, :PSI_start, :PSI_end, :weight_lbs, :tempature_air, :tempature_surface, :tempature_bottom, :comments, :profile_id)
  end
end
