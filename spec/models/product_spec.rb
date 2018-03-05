require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'validation' do
  it "should validate title length" do
    product = Product.new(title:'', description: "asvdfwrefvwqregq", price: 10.58, image_url: "http://www.googleimages?image.png")
    expect(product.valid?).to be false
  end

  it 'should validate description length' do
    product = Product.new(title:'frwefwerf', description: "asv", price: 10.58, image_url: "http://www.googleimages?image.png")
    expect(product.valid?).to be false
  end

  it 'should validate price' do
    product = Product.new(title:'frwefwerf', description: "asfev", price: "fe", image_url: "http://www.googleimages?image.png")
    expect(product.valid?).to be false
  end


  it 'should validate title presence' do
    product = Product.new(description: "asv", price: 10.58, image_url: "http://www.googleimages?image.png")
    expect(product.valid?).to be false
  end

  it 'should validate description presence' do
    product = Product.new(title:'frwefwerf', price: 10.58, image_url: "http://www.googleimages?image.png")
    expect(product.valid?).to be false
  end

  it 'should validate price presence' do
    product = Product.new(title:'frwefwerf', description: "asv", image_url: "http://www.googleimages?image.png")
    expect(product.valid?).to be false
  end

  it 'should validate image_url presence' do
    product = Product.new(title:'frwefwerf', description: "asfev", price: "fe")
    expect(product.valid?).to be false
  end

  it 'should validate price presence' do
    product = Product.new(title:'frwefwerf', description: "asv",  price: -1, image_url: "http://www.googleimages?image.png")
    expect(product.valid?).to be false
  end

  it "should persist a post" do
  Product.create(title:"gqergbqreg", description: "asvdfwrefvwqregq", price: 10.58, image_url: "http://www.googleimages?image.png")
  expect(Product.count).to eq(1)
end
end
end
