class UrlsController < ApplicationController

  def index
    @urls = Url.all
  end

  def show
    byebug
    @url = Url.find(params[:id])
  end

  def sweejin
    @url = Url.find_by(short_url: params[:short_url])
    redirect_to @url.long_url

  end

end
