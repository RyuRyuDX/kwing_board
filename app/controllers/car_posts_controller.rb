class CarPostsController < ApplicationController
  before_action :set_car_post, only: [:show, :edit, :update, :destroy]

  def index
    @q =CarPost.ransack(params[:q])
    @car_posts = @q.result(distinct: true)
  end

  def show
  end

  def new
    @car_post = CarPost.new
  end

  def edit
  end

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

    def car_post_params
      params.require(:car_post).permit(
        :car_number,
        :car_name,
        :driver,
        :car_to_driver,
        :car_course,
        :gensan,
        :turn_car,
        :work_or_not,
        :to_maintenance,
        :which_warehouse,
        :return_maintenance,
        :maintenance_name,
        :maintenance,
        :turn_car,
        :car_to_driver
      )
    end
end
