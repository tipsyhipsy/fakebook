class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    if params[:back]
      @post = Post.new(post_params)
    else
      @post = Post.new
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def confirm
  end

  def edit
  end

  def show
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

end
