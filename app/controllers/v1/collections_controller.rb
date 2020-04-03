class V1::CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find(params[:id])
    @user_title = User.all.find(@collection.user_id).title
    @collections = @collection.posts
  end
end
