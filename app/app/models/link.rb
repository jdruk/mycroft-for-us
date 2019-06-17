# == Schema Information
#
# Table name: links
#
#  id         :bigint(8)        not null, primary key
#  login      :string
#  password   :string
#  status     :integer          default(0), not null
#  type_link  :integer          default(0), not null
#  visible    :boolean          default(TRUE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  address_id :bigint(8)        not null
#  plan_id    :bigint(8)        not null
#
# Indexes
#
#  index_links_on_address_id  (address_id)
#  index_links_on_plan_id     (plan_id)
#
# Foreign Keys
#
#  fk_rails_...  (address_id => addresses.id)
#  fk_rails_...  (plan_id => plans.id)
#

class Link < ApplicationRecord

	belongs_to :address
	belongs_to :plan_of_data

	validates :address, presence: true
	validates :login, presence: true
	validates :password, presence: true
	validates :status, presence: true
	validates :status, presence: true
	validates :type_link, presence: true
	validates :plan_of_data, presence: true

end
