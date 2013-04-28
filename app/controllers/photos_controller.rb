class PhotosController < ApplicationController
  def new
    @album = Album.find params[:album_id]
    @photo = Photo.new
  end
  def create
    @album = Album.find params[:album_id]
    @photo = @album.photos.build params[:photo]

    if @photo.save 
      redirect_to album_url(@album)
    else
      render :new
    end
  end
  def destroy
    @album = Album.find params[:album_id]
    @photo = @album.photos.find params[:id]
    @photo.destroy
    redirect_to album_url(@album)
  end
end
