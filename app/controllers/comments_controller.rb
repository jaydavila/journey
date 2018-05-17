class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.post_id = @post.id
    @comment.save
    redirect_to post_path(@post)

  end

  def edit
  end

  def update
  end

  def destroy
     @post = Post.find(params[:post_id])
     @comment = @post.comments.find(params[:id])
     @comment.destroy
     redirect_to post_path(@post)
  end

  private
   def comment_params
     params.require(:comment).permit(:name, :body)
   end
end
