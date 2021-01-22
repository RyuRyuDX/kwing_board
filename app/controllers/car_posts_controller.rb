class CarPostsController < ApplicationController
  before_action :set_car_post, only: [:show, :edit, :update, :destroy]

  # GET /car_posts
  # GET /car_posts.json
  def index
    @car_posts = CarPost.all
  end

  # GET /car_posts/1
  # GET /car_posts/1.json
  def show
  end

  # GET /car_posts/new
  def new
    @car_post = CarPost.new
  end

  # GET /car_posts/1/edit
  def edit
  end

  # POST /car_posts
  # POST /car_posts.json
  def create
    @car_post = CarPost.new(car_post_params)

    respond_to do |format|
      if @car_post.save
        format.html { redirect_to @car_post, notice: 'Car post was successfully created.' }
        format.json { render :show, status: :created, location: @car_post }
      else
        format.html { render :new }
        format.json { render json: @car_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_posts/1
  # PATCH/PUT /car_posts/1.json
  def update
    respond_to do |format|
      if @car_post.update(car_post_params)
        format.html { redirect_to @car_post, notice: 'Car post was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_post }
      else
        format.html { render :edit }
        format.json { render json: @car_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_posts/1
  # DELETE /car_posts/1.json
  def destroy
    @car_post.destroy
    respond_to do |format|
      format.html { redirect_to car_posts_url, notice: 'Car post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_post
      @car_post = CarPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_post_params
      params.require(:car_post).permit(
        :car_number,
        :car_name,
        :driver,
        :car_to_driver,
        :car_course,
        :gensan,
        :turn_car,
        :work_or_not
      )
    end
end
