class Address < ApplicationRecord
  belongs_to :client

  geocoded_by :search_for
  after_validation :geocode, if: :updated?

  def updated?
  	address_changed? || neighborhood_changed || city_changed? || state_changed?
  end

  def search_for
  	[address, number,neighborhood,city, state].
  		reject(&:nil?).
  		reject(&:empty?).
  		join(',')
  end

  def to_s
  	search_for 
  end

end
