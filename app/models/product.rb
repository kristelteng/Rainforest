class Product < ActiveRecord::Base
  validates :description, :name, presence: true
  validates :price_in_cents, numericality: {only_integer: true}

  def formatted_price
    price_in_dollars = price_in_cents.to_f / 100
    
    # a method called sprintf to round your number to two decimals.
    sprintf("%.2f", price_in_dollars)  
  end

end
