class SitesController < ApplicationController
  def index
    @sites = Site.all
    @site = Site.new
  end
  def create
    @site = Site.new(params[:site])
    if @site.save
      flash[:notice] = "Site created"
    else
      flash[:error] = "Site not created"
    end
    redirect_to root_path
  end
end
