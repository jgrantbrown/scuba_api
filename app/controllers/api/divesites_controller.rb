class Api::DivesitesController < ApplicationController
  def index
    render json: Divesites.all
  end

  def create
    divesite = Divesites.new(divesite_params)
    if divesite.save
      render json: divesite
    else
      render json: {message: divesite.errors}, status: 400
    end
  end

  def show
      @divesite = Divesites.find_by(id: params[:id])
    render json: @divesite
  end

  def divesites_params
    params.require(:divesites).permit(:name, :location , :img_ur, :description)
  end
end
