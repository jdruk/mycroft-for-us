# == Schema Information
#
# Table name: links
#
#  id         :bigint(8)        not null, primary key
#  login      :string
#  password   :string
#  status     :integer
#  type_link  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  address_id :bigint(8)        not null
#
# Indexes
#
#  index_links_on_address_id  (address_id)
#
# Foreign Keys
#
#  fk_rails_...  (address_id => addresses.id)
#

class Link < ApplicationRecord

	belongs_to :address

	validates :address, presence: true
	validates :login, presence: true
	validates :password, presence: true
	validates :status, presence: true
	validates :status, presence: true
	validates :type_link, presence: true
end
