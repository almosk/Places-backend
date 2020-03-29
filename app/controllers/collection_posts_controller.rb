class CollectionPostsController < ApplicationController
  before_action :set_collection_post, only: [:show, :edit, :update, :destroy]

  # GET /collection_posts
  # GET /collection_posts.json
  def index
    @collection_posts = CollectionPost.all
  end

  # GET /collection_posts/1
  # GET /collection_posts/1.json
  def show
  end

  # GET /collection_posts/new
  def new
    @collection_post = CollectionPost.new
  end

  # GET /collection_posts/1/edit
  def edit
  end

  # POST /collection_posts
  # POST /collection_posts.json
  def create
    @collection_post = CollectionPost.new(collection_post_params)

    respond_to do |format|
      if @collection_post.save
        format.html { redirect_to @collection_post, notice: 'Collection post was successfully created.' }
        format.json { render :show, status: :created, location: @collection_post }
      else
        format.html { render :new }
        format.json { render json: @collection_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collection_posts/1
  # PATCH/PUT /collection_posts/1.json
  def update
    respond_to do |format|
      if @collection_post.update(collection_post_params)
        format.html { redirect_to @collection_post, notice: 'Collection post was successfully updated.' }
        format.json { render :show, status: :ok, location: @collection_post }
      else
        format.html { render :edit }
        format.json { render json: @collection_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collection_posts/1
  # DELETE /collection_posts/1.json
  def destroy
    @collection_post.destroy
    respond_to do |format|
      format.html { redirect_to collection_posts_url, notice: 'Collection post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collection_post
      @collection_post = CollectionPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collection_post_params
      params.require(:collection_post).permit(:collection_id, :post_id)
    end
end
