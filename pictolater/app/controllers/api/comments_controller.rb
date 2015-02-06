class Api::PhotosController < ApplicationController

  def index
    @comments = Comment.where( photo_id: comment_params[:photo_id])
    render :index
  end

  def create
    commenter_id = current_user.id
    total_photo_params = photo_params.merge({ owner_id: commenter_id })
    @comment = Comment.create!(total_photo_params)
    render json: @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:photo_id, :body)
  end
end
