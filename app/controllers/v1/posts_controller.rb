class V1::PostsController < ApplicationController

  def index
    @posts = Post.all.as_json
    @posts.each do |post|
      post['user_title'] = User.all.find(post['user_id']).title
    end
  end

  def show
    @post = Post.find(params[:id]).as_json
    @post['user_title'] = User.all.find(@post['user_id']).title
  end
end
