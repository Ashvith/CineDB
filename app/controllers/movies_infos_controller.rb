class MoviesInfosController < ApplicationController
  before_action :set_movies_info, only: [:show, :edit, :update, :destroy]

  # GET /movies_infos
  # GET /movies_infos.json
  def index
    @movies_infos = MoviesInfo.all
  end

  # GET /movies_infos/1
  # GET /movies_infos/1.json
  def show
  end

  # GET /movies_infos/new
  def new
    @movies_info = MoviesInfo.new
  end

  # GET /movies_infos/1/edit
  def edit
  end

  # POST /movies_infos
  # POST /movies_infos.json
  def create
    @movies_info = MoviesInfo.new(movies_info_params)

    respond_to do |format|
      if @movies_info.save
        format.html { redirect_to @movies_info, notice: 'Movies info was successfully created.' }
        format.json { render :show, status: :created, location: @movies_info }
      else
        format.html { render :new }
        format.json { render json: @movies_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies_infos/1
  # PATCH/PUT /movies_infos/1.json
  def update
    respond_to do |format|
      if @movies_info.update(movies_info_params)
        format.html { redirect_to @movies_info, notice: 'Movies info was successfully updated.' }
        format.json { render :show, status: :ok, location: @movies_info }
      else
        format.html { render :edit }
        format.json { render json: @movies_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies_infos/1
  # DELETE /movies_infos/1.json
  def destroy
    @movies_info.destroy
    respond_to do |format|
      format.html { redirect_to movies_infos_url, notice: 'Movies info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movies_info
      @movies_info = MoviesInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movies_info_params
      params.require(:movies_info).permit(:movie_id, :title, :cast, :crew)
    end
end
