class HomeController < ApplicationController
  def top
    @home = Home.all
    @apply_posts = ApplyPost.all.order(created_at: "DESC")
    @car_posts = CarPost.all.order(created_at: "DESC")
    @place_posts = PlacePost.all.order(created_at: "DESC")
    @offers = Offer.all.order(created_at: "DESC")
  end

  def show

  end

  def new
    @home = Home.new
  end

  def edit
  end

  def create
    @home = Home.new(home_params)

    respond_to do |format|
      if @home.save
        format.html { redirect_to @home, notice: 'Home was successfully created.' }
        format.json { render :show, status: :created, location: @home }
      else
        format.html { render :new }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @home.update(home_params)
        format.html { redirect_to @home, notice: 'Home was successfully created.' }
        format.json { render :show, status: :created, location: @home }
      else
        format.html { render :new }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_to homes_url, notice: 'Home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def home_params
    params.require(:home).permit(

    )
  end

end
