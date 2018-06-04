require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "nie utworzy produktu bez nazwy i opisu" do
    product = Product.new
   assert_not product.save, "utworzył produkt bez nazwy/opisu"
end

end
