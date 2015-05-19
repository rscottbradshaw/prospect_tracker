class Department < ActiveRecord::Base
  has_many :prospects
end
