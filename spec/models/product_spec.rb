require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here

    it "is valid" do
      @product = Product.new
      @category = Category.new
      @category.name = "Apparel"
      @product.name = "Test Item"
      @product.price_cents = 99999
      @product.quantity = 6
      @product.category = @category
      expect(@product.valid?).to be true
    end

    it "name is not present" do
      @product = Product.new
      @product.name = nil
      @product.valid?
      expect(@product.errors[:name]).to include("can't be blank")
    end

    it "price_cents is not present" do
      @product = Product.new
      @product.price_cents = nil
      @product.valid?
      expect(@product.errors[:price_cents]).to include("is not a number")
    end

    it "quantity is not present" do
      @product = Product.new
      @product.quantity = nil
      @product.valid?
      expect(@product.errors[:quantity]).to include("can't be blank")
    end

    it "category is not present" do
      @product = Product.new
      @product.category = nil
      @product.valid?
      expect(@product.errors[:category]).to include("can't be blank")
    end


  end
end