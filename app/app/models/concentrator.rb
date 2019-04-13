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
