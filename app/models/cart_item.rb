class CartItem
  attr_reader :product, :quantity

def initialize(product)
  @product = product
  @quantity = 1
end

def increment_quantity
  @quantity += 1
end

def decrement_quantity
  @quantity -= 1 #either display item only if quantity >0 or remove it...
end

def description
  @product.description
end

def photo_path
  @product.photo_path
end

def price
  @product.standard_price * @quantity
end

def tax
  @product.standard_price * @quantity*0.08
end

end