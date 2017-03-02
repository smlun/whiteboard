class CommentsController < ApplicationController
  def index
    @comments = Comment.find(params[:topic_id])
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.new(comment_params)
    @comment.topic = @topic
    @comment.user = current_user
    @comment.save
    redirect_to @topic
  end

  def destroy
  end

private
  def comment_params
    params.require(:comment).permit(:content, :ratings)
  end
end
