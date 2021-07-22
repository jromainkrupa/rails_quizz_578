class SongsController < ApplicationController

  def index 
    @songs = Song.all
  end

  def best_of_all_time
    @song = Song.where(rating: 5)
  end

  def search
    # params = {
    #   query: "toto"
    # }
    @songs = Song.where(title: params[:query])
  end

  def show
    # params.class? #=> hash
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :category, :year)
  end
end
