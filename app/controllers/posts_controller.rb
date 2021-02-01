class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def new
    @post = current_user.posts.build()
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post[:user_id] == current_user.id
      @post.destroy
      respond_to do |format|
        format.html { redirect_to root_url, notice: "Post was successfully deleted." }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to root_url, alert: "You cannot delete another user's post." }
        format.json { head :no_content }
      end
    end
  end

  def index
    @posts = Post.all.order("created_at DESC")
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :body)
  end
end
