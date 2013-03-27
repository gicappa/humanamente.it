class CreateCustomersTable < ActiveRecord::Migration
  def up
    create_table :customers do |t|
      t.string :email
      t.string :name
      t.string :surname
      t.datetime :birthdate
      t.string :sex
      t.boolean :privacy
      t.text :interests
      t.text :suggestions
      t.timestamps
    end
  end

  def down
    drop_table :customers
  end
end
