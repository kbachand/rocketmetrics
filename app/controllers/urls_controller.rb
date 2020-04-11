class UrlsController < ApplicationController
  include UrlsHelper

  def index
    @urls = Url.all
  end

  def show
    @url = Url.find(params[:id])
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    @url.save

    redirect_to url_path(@url)
  end

  def edit
    @url = Url.find(params[:id])
  end

  def update
    @url = Url.find(params[:id])
    @url.update(url_params)

    flash.notice = "URL '#{@url.url}' Updated!"

    redirect_to url_path(@url)
  end

  def destroy
    @url = Url.destroy(params[:id])

    flash.notice = "Url '#{@url.url}' Removed!"

    redirect_to urls_path(@url)
  end

end
