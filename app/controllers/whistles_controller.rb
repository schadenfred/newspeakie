class WhistlesController < ApplicationController
  before_action :set_whistle, only: [:show, :edit, :update, :destroy]

  # GET /whistles
  # GET /whistles.json
  def index
    @duckspeak = Duckspeak.find(params[:duckspeak_id])
    @whistles = @duckspeak.whistles.all
  end

  # GET /whistles/1
  # GET /whistles/1.json
  def show
    @whistle = Whistle.find(params[:id])
  end

  # GET /whistles/new
  def new
    @duckspeak = Duckspeak.find(params[:duckspeak_id])
    @whistle = @duckspeak.whistles.new
  end

  # GET /whistles/1/edit

  def edit
    # byebug     # @duckspeak = Duckspeak.find(params[:duckspeak_id])

  end

  # POST /whistles
  # POST /whistles.json
  def create
    @duckspeak = Duckspeak.find(params[:duckspeak_id])
    @whistle = @duckspeak.whistles.new(whistle_params)

    respond_to do |format|
      if @whistle.save
        format.html { redirect_to @duckspeak, notice: 'Whistle was successfully created.' }
        format.json { render :show, status: :created, location: @whistle }
      else
        format.html { render :new }
        format.json { render json: @whistle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whistles/1
  # PATCH/PUT /whistles/1.json
  def update
    respond_to do |format|
      if @whistle.update(whistle_params)
        format.html { redirect_to @whistle, notice: 'Whistle was successfully updated.' }
        format.json { render :show, status: :ok, location: @whistle }
      else
        format.html { render :edit }
        format.json { render json: @whistle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whistles/1
  # DELETE /whistles/1.json
  def destroy
    @whistle.destroy
    respond_to do |format|
      format.html { redirect_to whistles_url, notice: 'Whistle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whistle
      @whistle = Whistle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whistle_params
      params.require(:whistle).permit(:singular_name, :plural_name, :whistle_type)
    end
end
