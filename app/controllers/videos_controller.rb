class VideosController < ApplicationController

  def index
    @videos = Videos.all.order('created_at DESC')
  end

  def new
    @video = Video.new
  end

  # def create
  #   @video = Video.new(video_params)
  #   @video.create
  #   redirect_to @video
  # end

  def create
    @Video = Video.create(video_params)
    if @Video.valid?
      @Video.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @video = Video.find(params[:id])
  end

  private

  def video_params
    params.require(:video).permit(:title, :video)
  end
end