class IllustrationsController < ApplicationController

  before_filter :authenticate
  before_action -> { require_permission 'write_graphics' }

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
    @illustration = Illustration.new(illustration_params)
    if @illustration.save
      redirect_to @illustration, notice: t('illustrations.create.notice')
    else
      render action: "new", layout: 'admin'
    end
  end

  def update
    @illustration = Illustration.find(params[:id])
    if @illustration.update_attributes(illustration_params)
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

  def search
    illustration = Illustration.where('name = ?', illustration_params[:name]).first
    if illustration
      redirect_to illustration
    else
      flash[:warning] = "We could not find the illustration. Please make sure the name is accurate"
      redirect_to illustrations_path
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def illustration_params
    params.require(:illustration).permit(:name, :image)
  end

end
