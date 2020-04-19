class V1::CollectionsController < ApplicationController
  before_action :set_current_user
  def set_current_user
    @current_user = User.first
  end

  def profile_collections
    # @collections = Collection.all
    @collections = @current_user.collections
    render :json => @collections.collect { |c| c.collection_snippet_json}
  end

  def explore_collections
    @collections = Collection.all.select { |c| c.user_id != @current_user.id }
    render :json => @collections.collect { |c| c.collection_snippet_json}
  end

  def show
    @collection = Collection.find(params[:id])
    # @user_title = User.all.find(@collection.user_id).title
    # @posts = @collection.posts
    render :json => @collection.collection_show_json
  end
end
