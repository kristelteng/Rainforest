require 'rails_helper'

describe Product do
  it "must have a description" do
    product = Product.new(
      name: "Cool Product",
      price_in_cents: 100
      )
    expect(product.description).to be_nil
    expect(product).to_not be_valid
    product.description = "awesome product"
    expect(product).to be_valid
  end
end


describe Product do 
  it "must have a name" do
    product = Product.new(
      description: "awesome product",
      price_in_cents: 100
    )
    expect(product.name).to be_nil
    expect(product).to_not be_valid
    product.name = "Cool Product"
    expect(product).to be_valid
  end
end


describe Product do
  it "must have a price_in_cents" do
    product = Product.new(
      name: "Cool Product",
      description: "awesome product"
      )
    expect(product.price_in_cents).to be_nil
    expect(product).to_not be_valid
    product.price_in_cents = 100
    expect(product).to be_valid 
  end
end


describe Product do
  it "must have an integer for price" do
    product = Product.new(
      name: "Cool Product",
      description: "awesome product",
      price_in_cents: 100.0
      )
    expect(product).to_not be_valid
    product.price_in_cents = 100
    expect(product).to be_valid 
  end
end


describe Product do
  it "must have a formatted price" do
    product = Product.new(
      name: "Cool Product",
      description: "awesome product",
      price_in_cents: 100
      )
    expect(product.formatted_price).to eq("1.00")
  end
end


# describe Product do
#   it "can have many reviews" do
#     product = Product.new(
#       name: "Cool Product",
#       description: "awesome product",
#       price_in_cents: 100
#       )
#     expect(product.reviews).to be_nil
#     3.times do |i|
#       review = Review.new()
#     end
#   end
# end








