# == Schema Information
#
# Table name: clients
#
#  id         :bigint(8)        not null, primary key
#  cpf        :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Client < ApplicationRecord
	has_many :addresses

	accepts_nested_attributes_for :addresses, reject_if: :all_blank, allow_destroy: :true
end
