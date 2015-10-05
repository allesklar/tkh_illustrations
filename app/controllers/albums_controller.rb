class AlbumsController < ApplicationController

  before_filter :authenticate
  before_filter :authenticate_with_admin

  def index
    @albums = Album.by_recent.paginate(:page => params[:page], :per_page => 25)
    switch_to_admin_layout
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
    switch_to_admin_layout
  end

  def edit
    @album = Album.find(params[:id])
    switch_to_admin_layout
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to albums_path, notice: t('albums.create.notice')
    else
      render action: "new", layout: 'admin'
    end
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(album_params)
      redirect_to albums_path, notice: t('albums.update.notice')
    else
      render action: "edit", layout: 'admin'
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_url
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def album_params
    params.require(:album).permit(:name, :description, { images: [] })
  end

end
