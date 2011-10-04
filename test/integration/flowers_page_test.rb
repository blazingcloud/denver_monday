require 'test/unit'
require "test_helper"

class FlowersPageTest < ActionDispatch::IntegrationTest
  def test_has_price
    flower = Flower.create(:name => 'Columbine', :price => 99)
    visit(flowers_path)
    assert page.has_content?("99"), "99 appears on index page"
  end
  def test_has_name
    flower = Flower.create(:name => 'Columbine', :price => 99)
    visit(flowers_path)
    assert page.has_content?("Columbine"), "Columbine appears on index page"
  end
end