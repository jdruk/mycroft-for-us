class Address < ApplicationRecord
  belongs_to :client

  geocoded_by :search_for
  after_validation :geocode, if: :updated?

  def updated?
  	address_changed? || city_changed?
  end


  def search_for
  	[address, number, city, state].reject(&:empty?).join(',')
  end

end
