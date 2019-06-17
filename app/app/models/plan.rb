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
#
# Indexes
#
#  index_plans_on_name  (name) UNIQUE
#

class Plan < ApplicationRecord

	def self.available
		Plan.where visible: true
	end

	# Validates
	validates :name, presence: true
	validates :velocity_max_upload, presence: true
	validates :velocity_max_download, presence: true
end
