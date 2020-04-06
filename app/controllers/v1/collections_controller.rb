class V1::CollectionsController < ApplicationController

  def index
    @collections = Collection.all
    render :json => @collections.collect { |c| c.collection_snippet_json}
  end

  def show
    @collection = Collection.find(params[:id])
    # @user_title = User.all.find(@collection.user_id).title
    # @posts = @collection.posts
    render :json => @collection.collection_show_json
  end
end
