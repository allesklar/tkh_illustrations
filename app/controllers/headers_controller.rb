class HeadersController < ApplicationController

  before_action :authenticate
  before_action -> { require_permission_to 'write_graphics' }

  def index
    @headers = Header.by_recent.paginate(:page => params[:page], :per_page => 25)
    switch_to_admin_layout
  end

  def show
    @header = Header.find(params[:id])
    switch_to_admin_layout
  end

  def new
    @header = Header.new
    switch_to_admin_layout
  end

  def edit
    @header = Header.find(params[:id])
    switch_to_admin_layout
  end

  def create
    @header = Header.new(params[:header])
    if @header.save
      redirect_to @header, notice: t('headers.create.notice')
    else
      render action: "new", layout: 'admin'
    end
  end

  def update
    @header = Header.find(params[:id])
    if @header.update_attributes(params[:header])
      redirect_to @header, notice: t('headers.update.notice')
    else
      render action: "edit", layout: 'admin'
    end
  end

  def destroy
    @header = Header.find(params[:id])
    @header.destroy
    redirect_to headers_url
  end
end
