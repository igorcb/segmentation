require 'test_helper'

class OfficeTest < ActiveSupport::TestCase
	def setup
		@office = Office.new(name: "Programador")
	end

	test "should be valid" do
		assert @office.valid?
	end

	test "name should be present" do
		@office.name = "    "
		assert_not @office.valid?
  end

  test "name should not be too long" do
    @office.name = "a" * 51
    assert_not @office.valid?
  end

end
