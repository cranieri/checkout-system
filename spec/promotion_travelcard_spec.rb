require_relative '../lib/promotion_rule'
require_relative '../lib/promotion_travelcard'
require_relative '../lib/products'
require_relative '../lib/item'

describe PromotionTravelcard do
  describe '#execute' do
    context 'there are 2 or more travel card among the purchased items' do
      it 'return 8.50 ' do
        promotion = PromotionTravelcard.new([Item.new(:code_001), Item.new(:code_001), Item.new(:code_002)])
        expect(promotion.execute).to eq 1.50
      end
    end

    context 'the total is <= 60' do
      it 'return 0' do
        promotion = PromotionTravelcard.new([Item.new(:code_001), Item.new(:code_002)])
        expect(promotion.execute).to eq 0
      end
    end
  end
end
