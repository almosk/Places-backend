class V1::PostsController < ApplicationController

  def index
    @posts = Post.all
    render :json => @posts.collect { |p| p.post_snippet_json}
  end

  def show
    @post = Post.find(params[:id])
    render :json => @post.post_show_json
  end
end
