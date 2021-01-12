class VideosController < ApplicationController
  before_action :set_video, only: [:edit, :show, :destroy, :update]

  def index
    @videos = Video.all.order('created_at DESC')
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.create(video_params)
    if @video.valid?
      @video.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show

  end

  def edit
    
  end

  def destroy
    if @video.destroy
      redirect_to root_path
    else
      redirect_to video_path(@video.id)
    end
  end

  def update
    if @video.update(video_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def video_params
    params.require(:video).permit(:video, :title, :image)
  end

  def set_video
    @video = Video.find(params[:id])
  end

end