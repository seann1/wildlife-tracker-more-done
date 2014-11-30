class RegionsController < ApplicationController
  
  def new
    @region = Region.new(params[:region])
    render('regions/new.html.erb')
  end

  def create
    @region = Region.new(name: params[:name])
    if @region.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end
  
  def show
    @region = Region.find(params[:id])
    render('regions/show.html.erb')
  end
end
