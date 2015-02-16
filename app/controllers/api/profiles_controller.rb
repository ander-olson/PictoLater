class Api::ProfilesController < ApplicationController
  def show
    user_id = params[:id]
    @profile = Profile.where(owner_id: user_id).first
    @photos = @profile.photos
    render :show
  end

  def index
    @profiles = Profile.all
    render :index
  end
end
