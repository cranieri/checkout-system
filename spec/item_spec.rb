require_relative '../lib/item'
require_relative '../lib/products'

describe Item do
  describe '.new' do
    it 'creates a new item based on the product code passed' do
      prod = Item.new(:code_001)
      expect(prod.name).to eq 'Travel Card Holder'
    end
  end
end
