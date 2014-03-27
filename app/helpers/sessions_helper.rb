#All work done within this helper was completed by Zachary T. Kaspar 1st
module SessionsHelper
  def sign_in(user)
    user.remember_me!
    cookies[:remember_token] = { :value   => user.remember_token,
                                 :expires => 20.years.from_now.utc }
    cookies[:c_type] = { :value => user.c_type }
    cookies[:email] = { :value => user.email }
    self.current_user_email = user
    self.current_user_type = user
    self.current_user = user
  end

  def current_user_email=(user)
    @current_user_type = user.email
  end

  def current_user_email
    @current_user_type ||= user_from_email
  end

  def current_user_type=(user)
    @current_user_type = user.c_type
  end

  def current_user_type
    @current_user_type ||= user_from_type
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= user_from_remember_token
  end

  def user_from_remember_token
    remember_token = cookies[:remember_token]
    User.find_by_remember_token(remember_token) unless remember_token.nil?
  end

  def user_from_type
    @u_type = cookies[:c_type]
    #User.find_by_c_type(@u_type)
  end

  def user_from_email
    if cookies[:email].blank?
      @u_email = cookies[:email]
    else
      @u_email = cookies[:email]
    end
  end

  def get_c_type
    @current_user_type
  end

  def signed_in?
    !current_user.nil?
  end

  def determine_type?
    @u_type = cookies[:c_type]
    if @u_type.blank?
      true
    else
      false
    end
  end

  def determine_type_sales?
   @u_type = cookies[:c_type]
    if @u_type == 'Sale'
      true
    else
      false
    end
  end

  def determine_type_customer_support?
    @u_type = cookies[:c_type]
    if @u_type == 'Customer Support'
      true
    else
      false
    end
  end

  def determine_type_product_manager?
    @u_type = cookies[:c_type]
    if @u_type == 'Product Manager'
      true
    else
      false
    end
  end

  def determine_type_inventory_manager?
    @u_type = cookies[:c_type]
    if @u_type == 'Inventory Manager'
      true
    else
      false
    end
  end

  def determine_type_owner?
    @u_type = cookies[:c_type]
    if @u_type == 'Owner'
      true
    else
      false
    end
  end


  def sign_out
    cookies.delete(:remember_token)
    self.current_user = nil
  end

end
