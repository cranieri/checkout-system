class Item
  attr_reader :name
  attr_accessor :price

  def initialize(code)
    @name = Products::PRODUCTS[code][:name]
    @price = Products::PRODUCTS[code][:price]
  end

end