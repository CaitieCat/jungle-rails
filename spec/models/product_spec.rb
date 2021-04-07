require 'rails_helper'


RSpec.describe Product, type: :model do
  describe 'Validations' do
    product = Product.new(
      name: "Car",
      price_cents: 10000,
      quantity: 7,
      category_id: 2
    )
    # validation tests/examples here
    it "is not valid without a name" do
      product.name = nil
      expect(product).not_to be_valid
    end
    it "is not valid without a price" do
      product.price_cents = nil
      expect(product).not_to be_valid
    end
    it "is not valie without a category" do
      product.category_id = nil
      expect(product).not_to be_valid
    end
    it "is not valid without a quantity" do
      product.quantity = nil
      expect(product).not_to be_valid
    end
  end
end

