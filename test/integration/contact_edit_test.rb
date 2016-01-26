require 'test_helper'

class ContactEditTest < ActionDispatch::IntegrationTest
	def setup
    @contact = contacts(:igor)
  end

  test "unsuccessful edit" do
    get edit_contact_path(@contact)
    assert_template 'contacts/edit'
    patch contact_path(@contact), contact: {name:'', email: "", age: 30, state: 'Ceara', office_id: 1}
    assert_template 'contacts/edit'
  end

	test "successful edit" do
    get edit_contact_path(@contact)
    assert_template 'contacts/edit'
    name  = "Igor C. Batista"
    email = "igor@gmail.org"
    patch contact_path(@contact), contact: {name: name, email: email	, age: 30, state: 'Ceara', office_id: 1}
    assert_not flash.empty?
    assert_redirected_to @contact
    @contact.reload
    assert_equal name,  @contact.name
    assert_equal email, @contact.email
  end  
end
