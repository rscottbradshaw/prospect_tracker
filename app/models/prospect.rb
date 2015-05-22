class Prospect < ActiveRecord::Base
  has_many :emails
  belongs_to :department
  belongs_to :status

end
