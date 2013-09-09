require_relative '../lib/checkout'
require_relative '../lib/promotion_rule'
require_relative '../lib/promotion_travelcard'
require_relative '../lib/promotion_generic'
require_relative '../lib/item'
require_relative '../lib/products'

describe Checkout do
  describe '#total' do
    context 'the customer purchased 001, 002, 003' do
      it 'returns 66.78' do
        ck = Checkout.new([PromotionTravelcard, PromotionGeneric])
        ck.scan(Item.new(:code_001))
        ck.scan(Item.new(:code_002))
        ck.scan(Item.new(:code_003))
        expect(ck.total).to eq 66.78
      end
    end

    context 'the customer purchased 001, 003, 001' do
      it 'returns 36.95' do
        ck = Checkout.new([PromotionTravelcard, PromotionGeneric])
        ck.scan(Item.new(:code_001))
        ck.scan(Item.new(:code_003))
        ck.scan(Item.new(:code_001))
        expect(ck.total).to eq 36.95
      end
    end

    context 'the customer purchased 001, 002, 001, 003' do
      it 'returns 73.76' do
        ck = Checkout.new([PromotionTravelcard, PromotionGeneric])
        ck.scan(Item.new(:code_001))
        ck.scan(Item.new(:code_002))
        ck.scan(Item.new(:code_001))
        ck.scan(Item.new(:code_003))
        expect(ck.total.round(2)).to eq 73.76
      end
    end
  end
end