module UrlsHelper

  def url_params
   params.require(:url).permit(:url)
  end

end
