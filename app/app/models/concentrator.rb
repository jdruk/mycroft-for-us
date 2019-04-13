# == Schema Information
#
# Table name: concentrators
#
#  id         :bigint(8)        not null, primary key
#  address    :string
#  hostname   :string
#  login      :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Concentrator < ApplicationRecord

	# validações 
	validates :hostname, presence: true
	validates :address, presence: true
	validates :login, presence: true
	validates :password, presence: true

	def online?
		false
	end
end
