require 'test_helper'

class ContactNewTest < ActionDispatch::IntegrationTest
	test "invalid contact new information" do
		get new_contact_path
		assert_no_difference 'Contact.count' do
			post contacts_path, contact: {name:'Igor Batista', email: "admin@admin.org", age: 30, state: 'Ceara', office: 1}
		end
		assert_template 'user/new'
	end
end
