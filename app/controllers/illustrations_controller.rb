class IllustrationsController < ApplicationController
  
  def index
    @illustrations = Illustration.by_recent
    render layout: 'admin'
  end
  
  def show
    @illustration = Illustration.find(params[:id])
    render layout: 'admin'
  end
  
  def new
    @illustration = Illustration.new
    render layout: 'admin'
  end
  
  def edit
    @illustration = Illustration.find(params[:id])
    render layout: 'admin'
  end
  
  def create
    @illustration = Illustration.new(params[:illustration])
    if @illustration.save
      redirect_to @illustration, notice: 'Illustration was successfully created.'
    else
      render action: "new", layout: 'admin'
    end
  end
  
  def update
    @illustration = Illustration.find(params[:id])
    if @illustration.update_attributes(params[:illustration])
      redirect_to @illustration, notice: 'Illustration was successfully updated.'
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
