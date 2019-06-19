# == Schema Information
#
# Table name: banks
#
#  id         :bigint(8)        not null, primary key
#  code       :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bank < ApplicationRecord

	# Validates
	validates :code, presence: true
	validates :name, presence: true

	def self.available
		Bank.order :name
	end

end
