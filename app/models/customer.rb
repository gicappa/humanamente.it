class Customer < ActiveRecord::Base
  validates_uniqueness_of :email
  validates_presence_of :email
  validates_presence_of :name
  validates_presence_of :surname
end