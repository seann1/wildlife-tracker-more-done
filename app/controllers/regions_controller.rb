class RegionsController < ApplicationController
  def show
    @region = Region.find(params[:id])
    render('regions/show.html.erb')
  end
end
