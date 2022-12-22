class CommentsController < ApplicationController
  before_action :set_post
  before_action :set_comment, only: :show

  def index
    @comments = @post.comments
  end

  def show; end

  private

  def set_post
    @post = Post.find_by(id: params[:post_id])
  end

  def set_comment
    @comment = Comment.find_by(id: params[:id])
  end
end