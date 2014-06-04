class DownloadsController < ApplicationController

  before_filter :authenticate
  before_filter :authenticate_with_admin

  def index
    @downloads = Download.by_recent.paginate(:page => params[:page], :per_page => 50)
    switch_to_admin_layout
  end

  def new
    @download = Download.new
    switch_to_admin_layout
  end

  def edit
    @download = Download.find(params[:id])
    switch_to_admin_layout
  end

  def create
    @download = Download.new(download_params)
    if @download.save
      redirect_to downloads_path, notice: 'Your asset has been saved.'
    else
      render action: "new", layout: 'admin'
    end
  end

  def update
    @download = Download.find(params[:id])
    if @download.update_attributes(download_params)
      redirect_to downloads_path, notice: 'Your asset has been saved.'
    else
      render action: "edit", layout: 'admin'
    end
  end

  def destroy
    @download = Download.find(params[:id])
    @download.destroy
    redirect_to downloads_url
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def download_params
    params.require(:download).permit(:name, :thing)
  end

end
