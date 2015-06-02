class Prospect < ActiveRecord::Base
  has_many :emails
  belongs_to :department
  belongs_to :status
  scope :active, -> { where(active: true) }
  # scope :archive, -> { where(archive: true) }

  def self.archive
    self.includes(:status).where(statuses: { name: ["Declined", "Hired"]} )
  end

  def self.active
    Prospect.includes(:status).where.not(statuses: { name: ["Declined", "Hired"]} )
  end
  
end
