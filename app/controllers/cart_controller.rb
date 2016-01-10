class CartController < ApplicationController
  def index
  	#debugger
  	@blog= Blog.find_by_id(params[:format])
  	#@cart=@blog.blog_name

  end
end
