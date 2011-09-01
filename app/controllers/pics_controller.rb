class PicsController < ApplicationController
  # GET /pics
  # GET /pics.xml
  def index
    @pics = Pic.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pics }
    end
  end

  # GET /pics/1
  # GET /pics/1.xml
  def show
    @pic = Pic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pic }
    end
  end

  # GET /pics/new
  # GET /pics/new.xml
  def new
    @pic = Pic.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pic }
    end
  end

  # GET /pics/1/edit
  def edit
    @pic = Pic.find(params[:id])
  end

  # POST /pics
  # POST /pics.xml
  def create
    @pic = Pic.new(params[:pic])    
    respond_to do |format|
      if @pic.save
        format.html { redirect_to(@pic, :notice => 'Se ha cargado la imagen correctamente.') }
        format.xml  { render :xml => @pic, :status => :created, :location => @pic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pics/1
  # PUT /pics/1.xml
  def update
    @pic = Pic.find(params[:id])

    respond_to do |format|
      if @pic.update_attributes(params[:pic])
        format.html { redirect_to(@pic, :notice => 'Se ha actualizado la imagen correctamente') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pics/1
  # DELETE /pics/1.xml
  def destroy
    @pic = Pic.find(params[:id])
    @pic.destroy

    respond_to do |format|
      format.html { redirect_to(pics_url) }
      format.xml  { head :ok }
    end
  end
  
  # GET /pics/1/view/nombrefile
  def view
    @pic = Pic.find(params[:id])
    send_data(@pic.data, :filename => @pic.nombre, :type => @pic.tipo, :disposition => "inline")
  end
  
end
