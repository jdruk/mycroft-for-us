# == Schema Information
#
# Table name: clients
#
#  id          :bigint(8)        not null, primary key
#  cell        :string
#  cpf         :string           not null
#  description :text
#  name        :string           not null
#  phone       :string
#  rg          :string
#  visible     :boolean          default(TRUE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Client < ApplicationRecord

	# Relactions
	has_many :addresses

	# Validates
	validates :cpf, presence: true
	validates :name, presence: true
	validates :cell, presence: true

	accepts_nested_attributes_for :addresses, reject_if: :all_blank, allow_destroy: :true
end
