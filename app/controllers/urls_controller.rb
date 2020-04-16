class UrlsController < ApplicationController
  include UrlsHelper

  def index
    @urls = Url.all

     #response = HTTParty.get("https://www.googleapis.com/pagespeedonline/v5/runPagespeed?url=https://twolittlemonkeysphotography.com")

    #@response = response['lighthouseResult']['requestedUrl']
  end

  def show
    @url = Url.find(params[:id])

     response = HTTParty.get("https://www.googleapis.com/pagespeedonline/v5/runPagespeed?url=#{@url.url}")

    @requestedurl = response['lighthouseResult']['requestedUrl']
    @score = response['lighthouseResult']['environment']['networkUserAgent']
    @response = response
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
