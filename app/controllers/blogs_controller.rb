class BlogsController < ApplicationController
  def new
    if params[:back]
      @blog = Blog.new(blog_params)
    else
      @blog = Blog.new
    end
  end

  def create
    @blog = blog.new(blog_params)
    if blog.save
      redirect_to blogs_path
    else
      render 'new'
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
