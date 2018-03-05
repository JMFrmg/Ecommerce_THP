require 'rails_helper'

RSpec.describe Product, type: :model do
  it "should persist a post" do
  Product.create(title:"gqergbqreg", description: "asvdfwrefvwqregq", price: 10.58, image_url: "http://www.googleimages?image.png")
  expect(Product.count).to eq(1)
end
end
