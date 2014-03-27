class WorkCentersController < ApplicationController
  # GET /work_centers
  # GET /work_centers.xml
  def index
    @work_centers = WorkCenter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @work_centers }
    end
  end

  # GET /work_centers/1
  # GET /work_centers/1.xml
  def show
    @work_center = WorkCenter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @work_center }
    end
  end

  # GET /work_centers/new
  # GET /work_centers/new.xml
  def new
    @work_center = WorkCenter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @work_center }
    end
  end

  # GET /work_centers/1/edit
  def edit
    @work_center = WorkCenter.find(params[:id])
  end

  # POST /work_centers
  # POST /work_centers.xml
  def create
    @work_center = WorkCenter.new(params[:work_center])

    respond_to do |format|
      if @work_center.save
        format.html { redirect_to(@work_center, :notice => 'WorkCenter was successfully created.') }
        format.xml  { render :xml => @work_center, :status => :created, :location => @work_center }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @work_center.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /work_centers/1
  # PUT /work_centers/1.xml
  def update
    @work_center = WorkCenter.find(params[:id])

    respond_to do |format|
      if @work_center.update_attributes(params[:work_center])
        format.html { redirect_to(@work_center, :notice => 'WorkCenter was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @work_center.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /work_centers/1
  # DELETE /work_centers/1.xml
  def destroy
    @work_center = WorkCenter.find(params[:id])
    @work_center.destroy

    respond_to do |format|
      format.html { redirect_to(work_centers_url) }
      format.xml  { head :ok }
    end
  end
end
