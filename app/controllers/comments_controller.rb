class CommentsController < ApplicationController

  def create
    @video = Video.find(params[:video_id])
    comment = @video.comments.new(content: params[:video][:comment])
    # comment = Comment.new(comment_params)
    comment.save
    redirect_to video_path(@video.id)
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(params)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.udpate(comment_params)
    @comment.destroy
  end

  private
  def comment_params
    params.require(:video).permit(:comment)
  end

end
