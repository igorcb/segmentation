class AddOfficeIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :office_id, :integer
    remove_column :contacts, :office
  end
end
