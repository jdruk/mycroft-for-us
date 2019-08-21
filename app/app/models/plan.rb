# == Schema Information
#
# Table name: plans
#
#  id                    :bigint(8)        not null, primary key
#  name                  :string           not null
#  velocity_max_download :integer          not null
#  velocity_max_upload   :integer          not null
#  visible               :boolean          default(TRUE), not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  address_range_id      :bigint(8)        not null
#
# Indexes
#
#  index_plans_on_address_range_id  (address_range_id)
#  index_plans_on_name              (name) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (address_range_id => address_ranges.id)
#

class Plan < ApplicationRecord

	def self.available
		Plan.where visible: true
	end

	has_one :address_range
	
  # Validates
	validates :name, presence: true
	validates :velocity_max_upload, presence: true
	validates :velocity_max_download, presence: true
	validates :address_range, presence: true
end
