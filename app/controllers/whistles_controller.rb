class WhistlesController < ApplicationController
  before_action :set_whistle, only: [:show, :edit, :update, :destroy]

  def index
    @duckspeak = Duckspeak.find(params[:duckspeak_id])
    @whistles = @duckspeak.whistles.all
  end

  def show
    @whistle = Whistle.find(params[:id])
  end

  def new
    @duckspeak = Duckspeak.find(params[:duckspeak_id])
    @whistle = @duckspeak.whistles.new
  end

  def edit
  end

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

  def destroy
    @whistle.destroy
    respond_to do |format|
      format.html { redirect_to whistles_url, notice: 'Whistle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_whistle
      @whistle = Whistle.find(params[:id])
    end

    def whistle_params
      params.require(:whistle).permit(:singular_name, :plural_name, :whistle_type)
    end
end
