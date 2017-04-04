class BellyfeelsController < ApplicationController

  def idea

    duckspeak = Duckspeak.where(name: params[:duckspeak]).first
    duckspeak.nil? ? get_quack_from_faker : get_quack_from_db

    respond_to do |format|
      if @quack_content
        format.js { @quack_content }
        format.text { render plain: @quack_content }
      end
    end
  end

private

  def get_quack_from_faker

    klass = params[:duckspeak].underscore.camelize
    @quack_content = eval("Faker::#{klass}.#{params[:whistle]}")

  end


  def get_quack_from_db
    duckspeak = Duckspeak.where(name: params[:duckspeak]).first
    whistle = duckspeak.whistles.where(singular_name: params[:whistle]).first
    quacks = whistle.quacks
    @quack_content = quacks.sample.content

  end
end
