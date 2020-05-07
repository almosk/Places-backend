class V1::UsersController < ApplicationController
  before_action :set_current_user

  def set_current_user
    @current_user = User.first
  end

  def index
    @users = User.all.where.not(id: @current_user.id)
    render :json => @users.collect { |u| u.user_snippet_json}
  end

  # def show
  #   @post = Post.find(params[:id])
  #   render :json => @post.post_show_json
  # end
end
