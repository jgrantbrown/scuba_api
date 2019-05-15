class Api::DivesitesController < ApplicationController
  def index
    render json: Divesites.all
  end
end
