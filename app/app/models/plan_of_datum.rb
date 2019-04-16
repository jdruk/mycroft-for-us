# == Schema Information
#
# Table name: plan_of_data
#
#  id                    :bigint(8)        not null, primary key
#  name                  :string           not null
#  velocity_max_download :integer          not null
#  velocity_max_upload   :integer          not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
# Indexes
#
#  index_plan_of_data_on_name  (name) UNIQUE
#

class PlanOfDatum < ApplicationRecord

	# validações
	validates :name, presence: true
	validates :velocity_max_upload, presence: true
	validates :velocity_max_download, presence: true
end
