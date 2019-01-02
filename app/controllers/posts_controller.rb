class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(content: params[:content])
    if @post.save
      flash[:notice] = "Tweet Sent!"
      redirect_to('/posts/index')
    else
      render("posts/new")
    end
  end
  def edit
    @post = Post.find_by(id: params[:id])
  end
  def delete
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "Tweet Deleted"
    redirect_to('/posts/index')
  end
  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "Tweet Edited"
      redirect_to('/posts/index')
    else
      render("posts/edit")
    end
  end
  def show
    @post = Post.find_by(id: params[:id])
  end
end
