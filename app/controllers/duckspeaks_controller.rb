class DuckspeaksController < ApplicationController
  before_action :set_duckspeak, only: [:show, :edit, :update, :destroy]

  def index
    @duckspeaks = Duckspeak.all
  end

  def show
  end

  def new
    @duckspeak = Duckspeak.new
  end

  def edit
  end

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

  def destroy
    @duckspeak.destroy
    respond_to do |format|
      format.html { redirect_to duckspeaks_url, notice: 'Duckspeak was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
  def set_duckspeak
    @duckspeak = Duckspeak.find(params[:id])
  end

  def duckspeak_params
    params.require(:duckspeak).permit(:name, :description, :tagline)
  end
end
