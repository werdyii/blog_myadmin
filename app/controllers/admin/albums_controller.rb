class Admin::AlbumsController < ApplicationController
	layout "admin"

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find params[:id]
    @photos = @album.photos
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new params[:album]

    if @album.save
      redirect_to admin_albums_path
    else
      render :new
    end
  end

  def edit
    @album = Album.find params[:id]
  end

  def update
    @album = Album.find params[:id]

    if @album.update_attributes params[:album]
      redirect_to admin_albums_path
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find params[:id]
    @album.destroy
    redirect_to admin_albums_path
  end	
end
