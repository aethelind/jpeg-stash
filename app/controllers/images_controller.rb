class ImagesController < ApplicationController
  before_action :set_image, only: %i[ show edit update destroy ]

  # GET /images or /images.json
  def index
    @images = Image.all
  end

  # GET /images/1 or /images/1.json
  def show
  end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images or /images.json
  def create
    @image = Image.new(image_params)
    @image.user = current_user

    respond_to do |format|
      if @image.save
        # @image.user_id = current_user.id
        format.html { redirect_to root_path, notice: "Image was successfully created." }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /images/1 or /images/1.json
  def update
    if current_user and current_user.id == @image.user_id
      respond_to do |format|
        if @image.update(image_params)
          format.html { redirect_to @image, notice: "Image was successfully updated." }
          format.json { render :show, status: :ok, location: @image }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @image.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path, notice: "You do not have permissions to edit this image." }
        format.json { head :no_content }
      end
    end
  end

  # DELETE /images/1 or /images/1.json
  def destroy
    if current_user and current_user.id == @image.user_id
      @image.destroy
      respond_to do |format|
        format.html { redirect_to root_path, notice: "Image was successfully deleted." }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path, notice: "You do not have permissions to delete this image." }
        format.json { head :no_content }
      end
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def image_params
      params.require(:image).permit(:title, :image, :user_id)
    end
end
