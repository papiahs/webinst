class HomeController < ApplicationController
  def index
  end

  def viewart
    @art = Art.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @art }
    end
  end

end
