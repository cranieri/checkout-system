class PromotionRule
  include Comparable

  attr_reader :items, :total

  def initialize(items)
    @items = items
  end

  def total
    @total ||= total_amount
  end

  def total_amount
    items.inject(0) do |tot, item|
      tot += item.price
    end
  end

  def <=>(other)
    self.priority <=> other.priority
  end

end