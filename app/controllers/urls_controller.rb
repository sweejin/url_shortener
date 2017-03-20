class UrlsController < ApplicationController

  def new
    @url = Url.new
  end

  def create
    # @url = Url.new(params[:id])
    @url = Url.new(url_params)
    @url.shorten
    if @url.save
      redirect_to @url
    else
      render 'new'
    end
  end

  def index
    @urls = Url.all
  end

  def show
    byebug
    @url = Url.find(params[:id])
  end

  def destroy
    @url = Url.find(params[:id])
    @url.destroy
    redirect_to urls_path
  end

  def sweejin
    @url = Url.find_by(short_url: params[:short_url])
    redirect_to @url.long_url
  end

private
  def url_params
    params.require(:url).permit(:long_url)
  end
# Added a private method called url_params which only permits long_url to be exposed

end
