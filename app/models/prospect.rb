class Prospect < ActiveRecord::Base
  has_many :emails
  belongs_to :department

end
