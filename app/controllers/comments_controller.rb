class CommentsController < ApplicationController
  before_filter :require_user,:only=>[:create]
  def create
    @comment = Comment.new params[:comment]
    @user = User.find_by_id current_user.id
    @comment.user_id=@user.id
    @comment.user_name = @user.name
    @comment.user_photo_url = @user.thumb_url
    @comment.save
    redirect_to :back
  end
end
