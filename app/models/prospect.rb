class Prospect < ActiveRecord::Base
  has_many :emails
  belongs_to :department
  belongs_to :status

  def self.archive
    self.includes(:status).where(statuses: { name: ["Declined", "Hired"]} )
  end

  def self.active
    Prospect.includes(:status).except(statuses: { name: ["Declined", "Hired"]} )
  end

end
