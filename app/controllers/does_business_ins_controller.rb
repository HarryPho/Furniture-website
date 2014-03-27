class DoesBusinessInsController < ApplicationController
  # GET /does_business_ins
  # GET /does_business_ins.xml
  def index
    @does_business_ins = DoesBusinessIn.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @does_business_ins }
    end
  end

  # GET /does_business_ins/1
  # GET /does_business_ins/1.xml
  def show
    @does_business_in = DoesBusinessIn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @does_business_in }
    end
  end

  # GET /does_business_ins/new
  # GET /does_business_ins/new.xml
  def new
    @does_business_in = DoesBusinessIn.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @does_business_in }
    end
  end

  # GET /does_business_ins/1/edit
  def edit
    @does_business_in = DoesBusinessIn.find(params[:id])
  end

  # POST /does_business_ins
  # POST /does_business_ins.xml
  def create
    @does_business_in = DoesBusinessIn.new(params[:does_business_in])

    respond_to do |format|
      if @does_business_in.save
        format.html { redirect_to(@does_business_in, :notice => 'DoesBusinessIn was successfully created.') }
        format.xml  { render :xml => @does_business_in, :status => :created, :location => @does_business_in }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @does_business_in.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /does_business_ins/1
  # PUT /does_business_ins/1.xml
  def update
    @does_business_in = DoesBusinessIn.find(params[:id])

    respond_to do |format|
      if @does_business_in.update_attributes(params[:does_business_in])
        format.html { redirect_to(@does_business_in, :notice => 'DoesBusinessIn was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @does_business_in.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /does_business_ins/1
  # DELETE /does_business_ins/1.xml
  def destroy
    @does_business_in = DoesBusinessIn.find(params[:id])
    @does_business_in.destroy

    respond_to do |format|
      format.html { redirect_to(does_business_ins_url) }
      format.xml  { head :ok }
    end
  end
end
