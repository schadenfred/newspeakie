class QuacksController < ApplicationController
  before_action :set_quack, only: [:show, :edit, :update, :destroy]

  def create
    @quack = Quack.new(quack_params)

    respond_to do |format|
      if @quack.save
        format.js { }
      else
        format.js {  400 }
      end
    end
  end

  def destroy
    @quack.destroy

    respond_to do |format|
      format.js { }
    end
  end

private

  def set_quack
    @quack = Quack.find(params[:id])
  end

  def quack_params
    params.require(:quack).permit(:content, :whistle_id)
  end
end
