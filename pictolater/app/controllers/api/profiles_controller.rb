class Api::ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
    render :show
  end

  def index
    @profiles = Profile.all
    render :index
  end
end
