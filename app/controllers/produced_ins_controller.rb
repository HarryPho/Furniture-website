class ProducedInsController < ApplicationController
  # GET /produced_ins
  # GET /produced_ins.xml
  def index
    @produced_ins = ProducedIn.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @produced_ins }
    end
  end

  # GET /produced_ins/1
  # GET /produced_ins/1.xml
  def show
    @produced_in = ProducedIn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @produced_in }
    end
  end

  # GET /produced_ins/new
  # GET /produced_ins/new.xml
  def new
    @produced_in = ProducedIn.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @produced_in }
    end
  end

  # GET /produced_ins/1/edit
  def edit
    @produced_in = ProducedIn.find(params[:id])
  end

  # POST /produced_ins
  # POST /produced_ins.xml
  def create
    @produced_in = ProducedIn.new(params[:produced_in])

    respond_to do |format|
      if @produced_in.save
        format.html { redirect_to(@produced_in, :notice => 'ProducedIn was successfully created.') }
        format.xml  { render :xml => @produced_in, :status => :created, :location => @produced_in }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @produced_in.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /produced_ins/1
  # PUT /produced_ins/1.xml
  def update
    @produced_in = ProducedIn.find(params[:id])

    respond_to do |format|
      if @produced_in.update_attributes(params[:produced_in])
        format.html { redirect_to(@produced_in, :notice => 'ProducedIn was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @produced_in.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /produced_ins/1
  # DELETE /produced_ins/1.xml
  def destroy
    @produced_in = ProducedIn.find(params[:id])
    @produced_in.destroy

    respond_to do |format|
      format.html { redirect_to(produced_ins_url) }
      format.xml  { head :ok }
    end
  end
end
