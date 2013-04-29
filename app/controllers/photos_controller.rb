class PhotosController < ApplicationController
  before_filter :load_album 

  def new
    @photo = Photo.new
  end

  def create
    @photo = @album.photos.build params[:photo]

    if @photo.save 
      redirect_to album_url(@album)
    else
      render :new
    end
  end

  def destroy
    @photo = @album.photos.find params[:id]
    @photo.destroy
    redirect_to album_url(@album)
  end

  private
  def load_album
    @album = Album.find params[:album_id]
  end
end
