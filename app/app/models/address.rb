# == Schema Information
#
# Table name: addresses
#
#  id           :bigint(8)        not null, primary key
#  address      :string
#  city         :string
#  complement   :string
#  latitude     :decimal(, )
#  longitude    :decimal(, )
#  neighborhood :string
#  number       :string
#  state        :string
#  zip_code     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  client_id    :bigint(8)
#
# Indexes
#
#  index_addresses_on_client_id  (client_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_id => clients.id)
#

class Address < ApplicationRecord
  belongs_to :client

  geocoded_by :search_address
  after_validation :geocode, if: :updated?

  def updated?
  	address_changed? || neighborhood_changed? || city_changed? || state_changed?
  end

  def search_address
  	values_to_address.join(',')
  end


  def parser_address_to_url
    ERB::Util.url_encode(values_to_address.join(' '))
  end

  def to_s
    search_address 
  end

  private
    def values_to_address
      [address, number,neighborhood,city, state].
        reject(&:nil?).
        reject(&:empty?)
    end

end
