require 'test_helper'

class ContactTest < ActiveSupport::TestCase
	def setup
		@contact = Contact.new(name:'Igor Batista', email: "admin@admin.org", age: 30, state: 'Ceara', office_id: 1)
	end

	test "should be valid" do
		assert @contact.valid?
	end

  test "name should be present" do
		@contact.name = "    "
		assert_not @contact.valid?
	end

  test "name should not be too long" do
    @contact.name = "a" * 51
    assert_not @contact.valid?
  end

	test "email should be present" do
		@contact.email = "    "
		assert_not @contact.valid?
	end

  test "email should not be too long" do
    @contact.email = "a" * 244 + "@example.com"
    assert_not @contact.valid?
  end	

	test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @contact.email = valid_address
      assert @contact.valid?, "#{valid_address.inspect} should be valid"
    end
  end  
end
