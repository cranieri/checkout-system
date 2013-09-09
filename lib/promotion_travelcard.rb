class PromotionTravelcard < PromotionRule
  PRICE_DROP = 8.50
  PRIORITY = 1

  def execute
    return discount if travel_cards.size > 1
    0
  end

  def travel_cards
    @travel_cards ||= items.select { |item| item.name == 'Travel Card Holder'}
  end

  def total_price_drop
    (travel_cards.inject(0) {|tot, tc| tot += tc.price}) - (travel_cards.size * PRICE_DROP)
  end

  def update_price
    travel_cards.each do |tc|
      tc.price = PRICE_DROP
    end
  end

  def discount
    discount =  total_price_drop
    update_price
    discount
  end
end