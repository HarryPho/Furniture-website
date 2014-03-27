class WorksInsController < ApplicationController
  # GET /works_ins
  # GET /works_ins.xml
  def index
    @works_ins = WorksIn.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @works_ins }
    end
  end

  # GET /works_ins/1
  # GET /works_ins/1.xml
  def show
    @works_in = WorksIn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @works_in }
    end
  end

  # GET /works_ins/new
  # GET /works_ins/new.xml
  def new
    @works_in = WorksIn.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @works_in }
    end
  end

  # GET /works_ins/1/edit
  def edit
    @works_in = WorksIn.find(params[:id])
  end

  # POST /works_ins
  # POST /works_ins.xml
  def create
    @works_in = WorksIn.new(params[:works_in])

    respond_to do |format|
      if @works_in.save
        format.html { redirect_to(@works_in, :notice => 'WorksIn was successfully created.') }
        format.xml  { render :xml => @works_in, :status => :created, :location => @works_in }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @works_in.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /works_ins/1
  # PUT /works_ins/1.xml
  def update
    @works_in = WorksIn.find(params[:id])

    respond_to do |format|
      if @works_in.update_attributes(params[:works_in])
        format.html { redirect_to(@works_in, :notice => 'WorksIn was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @works_in.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /works_ins/1
  # DELETE /works_ins/1.xml
  def destroy
    @works_in = WorksIn.find(params[:id])
    @works_in.destroy

    respond_to do |format|
      format.html { redirect_to(works_ins_url) }
      format.xml  { head :ok }
    end
  end
end
