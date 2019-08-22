# == Schema Information
#
# Table name: gateways
#
#  id              :bigint(8)        not null, primary key
#  address         :inet             not null
#  interface       :string           not null
#  name            :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  concentrator_id :bigint(8)        not null
#
# Indexes
#
#  index_gateways_on_concentrator_id  (concentrator_id)
#
# Foreign Keys
#
#  fk_rails_...  (concentrator_id => concentrators.id)
#

class Gateway < ApplicationRecord
  belongs_to :concentrator

  validates :address, presence: true
  validates :name, presence: true
  validates :interface, presence: true
end
