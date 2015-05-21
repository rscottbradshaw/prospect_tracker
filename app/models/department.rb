class Department < ActiveRecord::Base
  has_many :prospects
  has_many :users
end
