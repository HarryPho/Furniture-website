class StaticController < ApplicationController
  def home
    @title ="Home"
  end

  def about
    @title ="About Us"
  end

  def customer_by_state
    #will have 2 columns, This will parse the Customer table and return the states of customers in the customer table and count customer
    #by their state attribute
      @data = Customer.find(:all , :select => "c_state as states, count(c_state) as num", :group => "c_state")
  end

  def customer_by_city
    #will have 2 columns (City and the count of customers per city)
    @data = Customer.find(:all , :select => "city as cities, count(city) as num", :group => "city")
  end

  def customer_report
    # This will return all customers from the customer table
    @data = Customer.all
  end

   def product_report
     #This has 7 columns and will pull the data from the product table
    @data = Product.find(:all , :select => "product_id as pid, description as description,standard_price as price, finish as finish, product_line_id as plid, cost as cost, annual_sales_goal as asg  ", :group => "pid")
  end

   #corrected by Mark Miller
  def product_line_report
    #initally coded by John Evans
    @data = Product.find(:all, :conditions=> "id <= 8")
  end

  def order_report
    #will have 4 columns pulled from the orders table coded by John Evans
    @data = Order.find(:all , :select => "order_id as oid, order_date as o_date, customer_id as cid, fulfillment_date as date", :group => "id")
  end

  #corrected by Mark Miller
  def order_line_report
    #will have 4 columns from the OrderLine table. This goes through the OrderLine method
    @data = OrderLine.find(:all , :select => "order_id as oid, product_id as pid, product_price as price, ordered_quantity as quantity", :group => "oid")
  end

  #corrected by Mark Miller
  def plsc_report
    #Initial coding done by John Evans this will return 4 columns from the User table
    @data = User.find(:all , :select => "id as id, name as name, c_type as type, zipcode as zipcode", :group => "id")
  end

  #created by Mark Miller for view
  def osd_select
    
  end

  #created by Mark Miller
  def osd_report
    @year = params[:osd_date]["(1i)"]
    @month = params[:osd_date]["(2i)"]
    @day = params[:osd_date]["(3i)"]
    #need yyyyy-mm-dd
    @orders = Order.find(:all, :conditions => ['order_date >= ?', "#{@year}-#{@month}-#{@day}"])
  end
# created by John Evans
  def tvp_report
    #Searches OrderLine report and pulls all current orders multiplying the price by order quantity to return the total amount of that product sold
    @data = OrderLine.find(:all , :select => "product_id as pid, sum(product_price*ordered_quantity) as value ", :group => "pid")
  end

   #created by Mark Miller
  def invoices_report
    @d = ActiveRecord::Base.connection.execute("
select c.customer_id, c.name, o.order_id, o.order_date,p.description, ol.product_id, sum(ol.ordered_quantity) as quantity, p.standard_price, sum(p.standard_price*ol.ordered_quantity) as total from customers c inner join orders o on c.customer_id = o.customer_id inner join order_lines ol on ol.order_id = o.order_id  inner join products p on p.product_id = ol.product_id where p.id <= 8 group by c.name
")
  end

   #created by Mark Miller
  def invoices_by_id_report
    @search_id = params[:invoice_num]
        @d = ActiveRecord::Base.connection.execute("select c.customer_id, c.name, o.order_id, o.order_date,p.description, ol.product_id, sum(ol.ordered_quantity) as quantity, p.standard_price, sum(p.standard_price*ol.ordered_quantity) as total from customers c inner join orders o on c.customer_id = o.customer_id inner join order_lines ol on ol.order_id = o.order_id  inner join products p on p.product_id = ol.product_id where p.id <= 8 and o.order_id = #{@search_id} group by c.name
")
  end

  def invoices_select

  end

   #created by Mark Miller for view
  def invoices_by_id_select
    
  end

  def purchase_history_report
      #will have 2 columns..
      @data = Order.find(:all , :select => "order_id as oid, order_date as o_date, customer_id as cid, fulfillment_date as date", :group => "id")
    end

   def warm_state_report
      #Created by John Evans, edited and fixed by Mark Miller
      @data = Customer.find(:all , :conditions => ['c_state = ? OR c_state = ? OR c_state = ? OR c_state = ?' , 'TX', 'FL', 'HI', 'CA'], :order => :c_state)
    end

    #created by Mark Miller
   def search
    @search_term = params[:srch]
    @products = Product.find(:all, :conditions => ['description LIKE ?', "%#{@search_term}%"])
  end

   def testimonials_search
    @st = params[:search_term]
    @testimonials = Testimonial.find(:all, :conditions => ['testimonial_content LIKE ?', "%#{@st}%"])
  end

   def testimonials
     
   end

end
