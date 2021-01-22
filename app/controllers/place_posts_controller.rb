class PlacePostsController < ApplicationController
  before_action :set_place_post, only: [:show, :edit, :update, :destroy]

  # GET /place_posts
  # GET /place_posts.json
  def index
    @place_posts = PlacePost.all
  end

  # GET /place_posts/1
  # GET /place_posts/1.json
  def show
  end

  # GET /place_posts/new
  def new
    @place_post = PlacePost.new
  end

  # GET /place_posts/1/edit
  def edit
  end

  # POST /place_posts
  # POST /place_posts.json
  def create
    @place_post = PlacePost.new(place_post_params)

    respond_to do |format|
      if @place_post.save
        format.html { redirect_to @place_post, notice: 'Place post was successfully created.' }
        format.json { render :show, status: :created, location: @place_post }
      else
        format.html { render :new }
        format.json { render json: @place_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_posts/1
  # PATCH/PUT /place_posts/1.json
  def update
    respond_to do |format|
      if @place_post.update(place_post_params)
        format.html { redirect_to @place_post, notice: 'Place post was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_post }
      else
        format.html { render :edit }
        format.json { render json: @place_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_posts/1
  # DELETE /place_posts/1.json
  def destroy
    @place_post.destroy
    respond_to do |format|
      format.html { redirect_to place_posts_url, notice: 'Place post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_post
      @place_post = PlacePost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def place_post_params
      params.require(:place_post).permit(:place_name, :address)
    end
end
