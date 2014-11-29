class Sighting < ActiveRecord::Base
  validates :species_id, :presence => true
  validates :date, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :region_id, :presence => true

  belongs_to :species
  belongs_to :region

  def self.by_date(start_date, ending_date)
    Sighting.where(date: start_date..ending_date)
  end
  
  def region
    if self.region_id == 1
      "Northwest"
    elsif self.region_id == 2
      "Southwest"
    elsif self.region_id == 3
      "Northeast"
    else
      "Southeast"
    end
  end
end
