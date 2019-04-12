class PlanOfDatum < ApplicationRecord

	# validações
	validates :name, presence: true
	validates :velocity_max_upload, presence: true
	validates :velocity_max_download, presence: true
end
