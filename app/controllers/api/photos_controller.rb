class Api::PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
    render json: @photo
  end

  def index
    page = params[:page] || 1
    @photos = current_user.favorite_peoples_photos.page(page)
    @page_number = page.to_i
    @total_pages = @photos.total_pages
    render :index
  end

  def create
    owner_id = current_user.id
    total_photo_params = photo_params.merge({ owner_id: owner_id })
    @photo = Photo.create!(total_photo_params)
    render json: @photo
  end

  private

  def photo_params
    params.require(:photo).permit(:url, :owner_id, :cloudinary_id)
  end
end
