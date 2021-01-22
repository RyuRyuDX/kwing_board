class ApplyPostsController < ApplicationController
  before_action :set_apply_post, only: [:show, :edit, :update, :destroy]

  # GET /apply_posts
  # GET /apply_posts.json
  def index
    @apply_posts = ApplyPost.all.order(created_at: "DESC")
  end

  # GET /apply_posts/1
  # GET /apply_posts/1.json
  def show
  end

  # GET /apply_posts/new
  def new
    @apply_post = ApplyPost.new
  end

  # GET /apply_posts/1/edit
  def edit
  end

  # POST /apply_posts
  # POST /apply_posts.json
  def create
    @apply_post = ApplyPost.new(apply_post_params)

    respond_to do |format|
      if @apply_post.save
        format.html { redirect_to @apply_post, notice: 'Apply post was successfully created.' }
        format.json { render :show, status: :created, location: @apply_post }
      else
        format.html { render :new, notice: '登録できません' }
        format.json { render json: @apply_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apply_posts/1
  # PATCH/PUT /apply_posts/1.json
  def update
    respond_to do |format|
      if @apply_post.update(apply_post_params)
        format.html { redirect_to @apply_post, notice: 'Apply post was successfully updated.' }
        format.json { render :show, status: :ok, location: @apply_post }
      else
        format.html { render :edit }
        format.json { render json: @apply_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apply_posts/1
  # DELETE /apply_posts/1.json
  def destroy
    @apply_post.destroy
    respond_to do |format|
      format.html { redirect_to apply_posts_url, notice: 'Apply post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apply_post
      @apply_post = ApplyPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apply_post_params
      params.require(:apply_post).permit(
        :candidate_name,
        :address,
        :apply_date,
        :apply_where,
        :age,
        :mail,
        :interview,
        :phonenumber,
        :passfail,
        :course,
        :tantou
      )
    end
end
