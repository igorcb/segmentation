require 'test_helper'

class ContactsIndexTest < ActionDispatch::IntegrationTest
	def setup
	  @contact_destroy = contacts(:destroy_contact)
	end

	test "index including pagination and destroy" do
    get contacts_path
    assert_template 'contacts/index'
    assert_select "a[href=?]", new_contact_path
    assert_select 'div.pagination'
    Contact.paginate(page: 1).each do |contact|
      assert_select 'a[href=?]', contact_path(contact), text: contact.name
      assert_select 'a[href=?]', contact_path(contact), text: 'Show'
      assert_select 'a[href=?]', edit_contact_path(contact), text: 'Edit'
      assert_select 'a[href=?]', contact_path(contact), text: 'Destroy'
    end
    assert_difference 'Contact.count', -1 do
      delete contact_path(@contact_destroy)
    end
  end  

  test "index" do
    get contacts_path
    assert_select 'a', text: 'delete', count: 0
  end
end
