class Course < ApplicationRecord
  belongs_to :user, optional: true

  def self.search(city)
    # where("city LIKE ? OR public LIKE ? OR private LIKE ? OR municipal LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    where("city LIKE ?", "%#{city}%")
  end
end
