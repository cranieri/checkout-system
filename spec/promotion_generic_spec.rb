require_relative '../lib/promotion_rule'
require_relative '../lib/promotion_generic'
require_relative '../lib/products'
require_relative '../lib/item'

describe PromotionGeneric do
  describe '#execute' do
    context 'the total is > 60' do
      it 'return 10% of the sum the items prize' do
        promotion = PromotionGeneric.new([Item.new(:code_001), Item.new(:code_001), Item.new(:code_002)])
        expect(promotion.execute).to eq 6.35
      end
    end

    context 'the total is <= 60' do
      it 'return 0' do
        promotion = PromotionGeneric.new([Item.new(:code_001), Item.new(:code_001)])
        expect(promotion.execute).to eq 0
      end
    end
  end
end
