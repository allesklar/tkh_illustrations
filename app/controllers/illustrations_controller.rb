class IllustrationsController < ApplicationController
  
  before_filter :authenticate
  before_filter :authenticate_with_admin
  
  def index
    @illustrations = Illustration.by_recent.paginate(:page => params[:page], :per_page => 25)
    switch_to_admin_layout
  end
  
  def show
    @illustration = Illustration.find(params[:id])
    switch_to_admin_layout
  end
  
  def new
    @illustration = Illustration.new
    switch_to_admin_layout
  end
  
  def edit
    @illustration = Illustration.find(params[:id])
    switch_to_admin_layout
  end
  
  def create
    @illustration = Illustration.new(params[:illustration])
    if @illustration.save
      redirect_to @illustration, notice: t('illustrations.create.notice')
    else
      render action: "new", layout: 'admin'
    end
  end
  
  def update
    @illustration = Illustration.find(params[:id])
    if @illustration.update_attributes(params[:illustration])
      redirect_to @illustration, notice: t('illustrations.update.notice')
    else
      render action: "edit", layout: 'admin'
    end
  end
  
  def destroy
    @illustration = Illustration.find(params[:id])
    @illustration.destroy
    redirect_to illustrations_url
  end
end
