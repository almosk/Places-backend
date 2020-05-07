class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :select_collection, :add_collection, :delete_from_collection]
  skip_before_action :verify_authenticity_token

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        # format.json { render :show, status: :created, location: @post }
        format.json { render json: {post: @post},  status: :ok }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def save_to_collection
  end

  def add_collection
    #puts params.inspect
    #sputs params[:post][:collection_ids]
    @collection = Collection.find(params[:post][:collection_ids])
    respond_to do |format|
      if @post.collections << @collection
        format.html { redirect_to @collection, notice: 'Post was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  end

  def delete_from_collection
    @collection = Collection.find(params[:collection])
    respond_to do |format|
      if @post.collections.delete(@collection)
        format.html { redirect_to @collection, notice: 'Post was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :description, :place_id, :user_id, collection_ids: [])
    end
end
