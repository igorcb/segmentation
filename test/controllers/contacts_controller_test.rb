require 'test_helper'

class ContactsControllerTest < ActionController::TestCase

	def setup
    @contact_destroy = contacts(:destroy_contact)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get index" do
  	get :index
    assert_response :success
  end

end
