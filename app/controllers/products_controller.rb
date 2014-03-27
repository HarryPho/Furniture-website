class ProductsController < ApplicationController
  def livingroom
    @title ="Living Room"
    @sets = Product.find(:all, :conditions => ["product_id = 1"])
    @chairs_and_sofas = Product.find(:all, :conditions => ["product_id = 2"])
    @tv_and_media_furniture = Product.find(:all, :conditions => ["product_id = 3"])
    @storage = Product.find(:all, :conditions => ["product_id = 4"])
    @coffe_and_side_tables = Product.find(:all, :conditions => ["product_id = 5"])
    @lighting = Product.find(:all, :conditions => ["product_id = 6"])
    @carpets = Product.find(:all, :conditions => ["product_id = 7"])
    @accessories = Product.find(:all, :conditions => ["product_id = 8"])
  end

  def beedroom
    @title ="Bed Room"
    @sets = Product.find(:all, :conditions => ["product_id = 9"])
    @beds = Product.find(:all, :conditions => ["product_id = 10"])
    @bedroom_storage = Product.find(:all, :conditions => ["product_id = 11"])
    @night_stands = Product.find(:all, :conditions => ["product_id = 12"])
    @dressers_and_mirrors = Product.find(:all, :conditions => ["product_id = 13"])
    @accessories = Product.find(:all, :conditions => ["product_id = 14"])
  end

  def mattress
    @title ="Mattress"
    @king_size = Product.find(:all, :conditions => ["product_id = 15"])
    @queen_size = Product.find(:all, :conditions => ["product_id = 16"])
    @full_size = Product.find(:all, :conditions => ["product_id = 17"])
    @twin = Product.find(:all, :conditions => ["product_id = 18"])
    @single = Product.find(:all, :conditions => ["product_id = 19"])
    @accessories = Product.find(:all, :conditions => ["product_id = 20"])
  end

  def bathroom
    @title ="Bathroom"
    @sets = Product.find(:all, :conditions => ["product_id = 21"])
    @sink_cabinets = Product.find(:all, :conditions => ["product_id = 22"])
    @bathroom_storage = Product.find(:all, :conditions => ["product_id = 23"])
    @accessories = Product.find(:all, :conditions => ["product_id = 24"])
    @lighting = Product.find(:all, :conditions => ["product_id = 25"])
  end

  def kitchen
    @title ="Kitchen"
    @sets = Product.find(:all, :conditions => ["product_id = 26"])
    @dining_tables = Product.find(:all, :conditions => ["product_id = 27"])
    @dining_chairs = Product.find(:all, :conditions => ["product_id = 28"])
    @faucets_and_sinks = Product.find(:all, :conditions => ["product_id = 29"])
    @cabinets = Product.find(:all, :conditions => ["product_id = 30"])
    @accessories = Product.find(:all, :conditions => ["product_id = 31"])
  end

  def office
    @title ="Office"
    @sets = Product.find(:all, :conditions => ["product_id = 32"])
    @desks_and_tables = Product.find(:all, :conditions => ["product_id = 33"])
    @office_chairs = Product.find(:all, :conditions => ["product_id = 34"])
    @storage = Product.find(:all, :conditions => ["product_id = 35"])
    @accessories = Product.find(:all, :conditions => ["product_id = 36"])
  end

  def outdoor
    @title ="Outdoor"
    @sets = Product.find(:all, :conditions => ["product_id = 37"])
    @outdoor_dining = Product.find(:all, :conditions => ["product_id = 38"])
    @lounging = Product.find(:all, :conditions => ["product_id = 39"])
    @accessories = Product.find(:all, :conditions => ["product_id = 40"])
  end

  #methods for the shopping cart ------------------
  #def index
    #@products = Product.all
  #end

  def find_cart
      session[:cart] ||= Cart.new
  end

  def add_to_cart
    #use product instead of furniture..
    product = Product.find(params[:id])
    @cart = find_cart
    @cart.add_product(product)
    #maybe on success.. redirect to the same page instead of cart?..
	redirect_to :controller => 'account', :action => 'cart'

    rescue ActiveRecord::RecordNotFound
      logger.error("Attempt to access invalid product #{params[:id]}" )
      redirect_to_index("Invalid product" )
  end

  def empty_cart
    session[:cart] = nil
    redirect_to_index("Your cart is currently empty" )
  end

  def redirect_to_index(msg)
    flash[:notice] = msg
    #redirect_to :action => root_path
    redirect_to :controller => 'static', :action => 'home'
  end
  #methods for the shopping cart ------------------

  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @products }
    end
  end

    # GET /products/1
  # GET /products/1.xml
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to(@product, :notice => 'Product was successfully created.') }
        format.xml  { render :xml => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to(@product, :notice => 'Product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(products_url) }
      format.xml  { head :ok }
    end
  end

end
