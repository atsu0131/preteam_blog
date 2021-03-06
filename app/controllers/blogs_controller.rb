class BlogsController < ApplicationController
  before_action :set_blog, only: [:index, :edit, :update, :destroy]

  def edit
  end

  def update
    if @blog.update(blog_params)
       redirect_to blogs_path, notice: "ブログを編集しました！"
    else
      render 'edit'
    end
  end

  def index
    @user = User.find(params[:id])
  end

  def destroy
    @blog.destroy
    redirect_to new_blog_path, notice:"ブログを削除しました！"
  end

  def new
    if params[:back]
      @blog = Blog.new(blog_params)
    else
      @blog = Blog.new
    end
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path
    else
      render 'new'
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

end
