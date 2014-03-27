class AccountController < ApplicationController
  def cart
    @title ="Cart"
    @cart = find_cart

  end

  def myaccount
    @title ="My Account"
  end

  def signin
    @title = "Sign In"
  end

  def register
    @title = "Register"
  end

   def forgotpass
    @title = "Forgot Password"
  end

   def reports
    @title = "Reports"
  end

  def find_cart
      session[:cart] ||= Cart.new
  end

  def empty_cart
    session[:cart] = nil
    redirect_to :back
  end

  def decrement_count
    @cart = find_cart
    @cart.decrement_count(params[:id].to_i)
    redirect_to :back
  end

  def increment_count
    @cart = find_cart
    @cart.increment_count(params[:id].to_i)
    redirect_to :back
  end

  def delete_item
    @cart = find_cart
    @cart.delete(params[:id].to_i)
    redirect_to :back
  end

  def checkout
    @cart = find_cart

  end

  def complete_order

  end

end
