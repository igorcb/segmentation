require 'test_helper'

class ContactNewTest < ActionDispatch::IntegrationTest
	test "invalid contact new information" do
		get new_contact_path
		assert_no_difference 'Contact.count' do
			post contacts_path, contact: {name:'', email: "", age: 30, state: 'Ceara', office_id: 1}
		end
		assert_template 'contacts/new'
	end

	test "valid contact new information" do
		get new_contact_path
    assert_difference 'Contact.count', 1 do
      post_via_redirect contacts_path, contact: {name:'Igor Batista', email: "admin@admin.org", age: 30, state: 'Ceara', office_id: 1}
    end
    assert_template 'contacts/show'
  end	
end
