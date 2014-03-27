class UsesController < ApplicationController
  # GET /uses
  # GET /uses.xml
  def index
    @uses = Use.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @uses }
    end
  end

  # GET /uses/1
  # GET /uses/1.xml
  def show
    @use = Use.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @use }
    end
  end

  # GET /uses/new
  # GET /uses/new.xml
  def new
    @use = Use.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @use }
    end
  end

  # GET /uses/1/edit
  def edit
    @use = Use.find(params[:id])
  end

  # POST /uses
  # POST /uses.xml
  def create
    @use = Use.new(params[:use])

    respond_to do |format|
      if @use.save
        format.html { redirect_to(@use, :notice => 'Use was successfully created.') }
        format.xml  { render :xml => @use, :status => :created, :location => @use }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @use.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /uses/1
  # PUT /uses/1.xml
  def update
    @use = Use.find(params[:id])

    respond_to do |format|
      if @use.update_attributes(params[:use])
        format.html { redirect_to(@use, :notice => 'Use was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @use.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /uses/1
  # DELETE /uses/1.xml
  def destroy
    @use = Use.find(params[:id])
    @use.destroy

    respond_to do |format|
      format.html { redirect_to(uses_url) }
      format.xml  { head :ok }
    end
  end
end
