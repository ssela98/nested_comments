class CommentsController < ApplicationController
  before_action :set_post
  before_action :set_comment, only: :show

  def index
    @comments = @post.comments
  end

  def show; end

  def new
    @comment = Comment.new
  end

  def create
    @comment = @post.comments.create(comment_params)
  end

  private

  def set_post
    @post = Post.find_by(id: params[:post_id])
  end

  def set_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
