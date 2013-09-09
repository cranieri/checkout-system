class Checkout
  def initialize(promotional_rules)
    @promotional_rules = promotional_rules
    @items = []
  end

  def scan(item)
    @items << item
  end

  def total
    total_amount - discount
  end

  def total_amount
    @items.inject(0) do |tot, item|
      tot += item.price
    end
  end

  def discount
    discount = 0
    promotional_rules.each do |pr|
      promo = pr.new(@items)
      discount += promo.execute
      @items = promo.items
    end
    discount
  end

  def promotional_rules
    @promotional_rules.sort! { |a,b| a::PRIORITY <=> b::PRIORITY }
  end
end