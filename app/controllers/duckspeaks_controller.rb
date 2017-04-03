class DuckspeaksController < ApplicationController
  before_action :set_duckspeak, only: [:show, :edit, :update, :destroy]

  # GET /duckspeaks
  # GET /duckspeaks.json
  def index
    @duckspeaks = Duckspeak.all
  end

  # GET /duckspeaks/1
  # GET /duckspeaks/1.json
  def show
  end

  # GET /duckspeaks/new
  def new
    @duckspeak = Duckspeak.new
  end

  # GET /duckspeaks/1/edit
  def edit
  end

  # POST /duckspeaks
  # POST /duckspeaks.json
  def create
    @duckspeak = Duckspeak.new(duckspeak_params)

    respond_to do |format|
      if @duckspeak.save
        format.html { redirect_to @duckspeak, notice: 'Duckspeak was successfully created.' }
        format.json { render :show, status: :created, location: @duckspeak }
      else
        format.html { render :new }
        format.json { render json: @duckspeak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duckspeaks/1
  # PATCH/PUT /duckspeaks/1.json
  def update
    respond_to do |format|
      if @duckspeak.update(duckspeak_params)
        format.html { redirect_to @duckspeak, notice: 'Duckspeak was successfully updated.' }
        format.json { render :show, status: :ok, location: @duckspeak }
      else
        format.html { render :edit }
        format.json { render json: @duckspeak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duckspeaks/1
  # DELETE /duckspeaks/1.json
  def destroy
    @duckspeak.destroy
    respond_to do |format|
      format.html { redirect_to duckspeaks_url, notice: 'Duckspeak was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duckspeak
      @duckspeak = Duckspeak.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duckspeak_params
      params.require(:duckspeak).permit(:name, :description, :tagline)
    end
end
