class Api::CommentsController < ApplicationController

  def index
    @comments = Comment.where( photo_id: comment_params[:photo_id])
    render :index
  end

  def create
    commenter_id = current_user.id
    total_comment_params = comment_params.merge({ commenter_id: commenter_id })
    @comment = Comment.create(total_comment_params)
    render :show
  end

  private

  def comment_params
    params.require(:comment).permit(:photo_id, :body)
  end
end
