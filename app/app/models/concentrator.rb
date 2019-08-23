# == Schema Information
#
# Table name: concentrators
#
#  id               :bigint(8)        not null, primary key
#  address          :string           not null
#  hostname         :string           not null
#  login            :string           not null
#  password         :string           not null
#  visible          :boolean          default(TRUE), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  address_range_id :bigint(8)
#
# Indexes
#
#  index_concentrators_on_address_range_id  (address_range_id)
#
# Foreign Keys
#
#  fk_rails_...  (address_range_id => address_ranges.id)
#
require 'mikrotik'

class Concentrator < ApplicationRecord

	# Relactions
	has_many :address_ranges
	has_one :address_range

	# Validates 
	validates :hostname, presence: true
	validates :address, presence: true
	validates :login, presence: true
	validates :password, presence: true

	accepts_nested_attributes_for :address_range

	def online?
		status = test_conection
    status[:success]
	end

	def self.available
		Concentrator.where visible: true
	end

  def test_conection
    Mikrotik.test_conection self
  end

	def info_concentrator
		if(online?)
      Mikrotik.throughput self
    end
	end

  def interfaces
    Mikrotik.interfaces self  
  end
end
