class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :birthdate, :datetime
    add_column :users, :sex, :string
    add_column :users, :privacy, :boolean
    add_column :users, :interests, :text
    add_column :users, :suggestions, :text
  end
end
