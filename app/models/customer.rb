class Customer < ActiveRecord::Base
  validates_uniqueness_of :email
  #t.string :email
  #t.string :name
  #t.string :surname
  #t.datetime :birthdate
  #t.string :sex
  #t.boolean :privacy
  #t.text :interests
  #t.text :suggestions
  #t.timestamps

end