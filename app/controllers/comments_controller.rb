class CommentsController < ApplicationController
  def index
    @comments = Comment.find(params[:topic_id])
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.new(comment_params)
    @comment.ratings = 0
    @comment.topic = @topic
    @comment.user = current_user
    @comment.save!
    redirect_to @topic
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to topic_path(params[:topic_id])
  end

private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
