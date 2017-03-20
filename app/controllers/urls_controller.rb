class UrlsController < ApplicationController

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(params[:id])
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

  def sweejin
    @url = Url.find_by(short_url: params[:short_url])
    redirect_to @url.long_url

  end

end
