class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :state
      t.integer :age
      t.integer :office

      t.timestamps null: false
    end
  end
end
