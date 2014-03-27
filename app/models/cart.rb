class Cart
  attr_reader :items

  def initialize
    @items = []
  end

  def add_product(product)
    current_item = @items.find {|item| item.product == product}
    if current_item #exists..
      current_item.increment_quantity
    else
      @items << CartItem.new(product)
    end
  end

  def total_price
    @items.sum { |item| item.price }
  end

  def total_tax
    @items.sum { |item| item.tax }
  end

  def empty?
    @items.empty?
  end

  def delete(id)
    @items.delete_at(id)
  end

  def decrement_count(idx)
    @items.at(idx).decrement_quantity
    if @items.at(idx).quantity == 0
      delete(idx)
    end
  end

  def increment_count(idx)
    @items.at(idx).increment_quantity
  end

end
