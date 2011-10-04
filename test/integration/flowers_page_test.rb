require "test_helper"

class FlowersPageTest < ActionDispatch::IntegrationTest

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_has_name
    flower = Flower.create(:name => 'Columbine', :price => 99)
    assert page.has_content?("Columbine")
  end
end