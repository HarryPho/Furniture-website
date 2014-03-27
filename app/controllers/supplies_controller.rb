class SuppliesController < ApplicationController
  # GET /supplies
  # GET /supplies.xml
  def index
    @supplies = Supply.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @supplies }
    end
  end

  # GET /supplies/1
  # GET /supplies/1.xml
  def show
    @supply = Supply.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @supply }
    end
  end

  # GET /supplies/new
  # GET /supplies/new.xml
  def new
    @supply = Supply.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @supply }
    end
  end

  # GET /supplies/1/edit
  def edit
    @supply = Supply.find(params[:id])
  end

  # POST /supplies
  # POST /supplies.xml
  def create
    @supply = Supply.new(params[:supply])

    respond_to do |format|
      if @supply.save
        format.html { redirect_to(@supply, :notice => 'Supply was successfully created.') }
        format.xml  { render :xml => @supply, :status => :created, :location => @supply }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @supply.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /supplies/1
  # PUT /supplies/1.xml
  def update
    @supply = Supply.find(params[:id])

    respond_to do |format|
      if @supply.update_attributes(params[:supply])
        format.html { redirect_to(@supply, :notice => 'Supply was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @supply.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /supplies/1
  # DELETE /supplies/1.xml
  def destroy
    @supply = Supply.find(params[:id])
    @supply.destroy

    respond_to do |format|
      format.html { redirect_to(supplies_url) }
      format.xml  { head :ok }
    end
  end
end
