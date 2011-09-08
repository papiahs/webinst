class RefsController < ApplicationController
  # GET /refs
  # GET /refs.xml
  def index
    @refs = Ref.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @refs }
    end
  end

  # GET /refs/1
  # GET /refs/1.xml
  def show
    @ref = Ref.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ref }
    end
  end

  # GET /refs/new
  # GET /refs/new.xml
  def new
    @ref = Ref.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ref }
    end
  end

  # GET /refs/1/edit
  def edit
    @ref = Ref.find(params[:id])
  end

  # POST /refs
  # POST /refs.xml
  def create
    @ref = Ref.new(params[:ref])
    @ref.autors = params[:autors] ? Autor.find(params[:autors]) : []
  #video.categories = params[:categories] ? Category.find(params[:categories]) : []
    respond_to do |format|
      if @ref.save
        format.html { redirect_to(@ref, :notice => 'Ref was successfully created.') }
        format.xml  { render :xml => @ref, :status => :created, :location => @ref }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ref.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /refs/1
  # PUT /refs/1.xml
  def update
    @ref = Ref.find(params[:id])

    respond_to do |format|
      if @ref.update_attributes(params[:ref])
        format.html { redirect_to(@ref, :notice => 'Ref was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ref.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /refs/1
  # DELETE /refs/1.xml
  def destroy
    @ref = Ref.find(params[:id])
    @ref.destroy

    respond_to do |format|
      format.html { redirect_to(refs_url) }
      format.xml  { head :ok }
    end
  end
end
