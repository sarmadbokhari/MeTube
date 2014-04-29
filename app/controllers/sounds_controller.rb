class SoundsController < ApplicationController

  def index
    @sounds = Sound.all
  end

  def show
    @sound = Sound.find(params[:id])
  end

  def new
    @sound = Sound.new
  end

  def create
    sound = Sound.new(params)
    sound.save
    redirect_to "/sounds/#{sound.id}"
  end

  def edit
    @sound = Video.find(params[:id])
  end

end
