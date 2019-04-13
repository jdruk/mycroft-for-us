# == Schema Information
#
# Table name: addresses
#
#  id           :bigint(8)        not null, primary key
#  address      :string
#  city         :string
#  complement   :string
#  latitude     :decimal(, )
#  longitude    :decimal(, )
#  neighborhood :string
#  number       :string
#  state        :string
#  zip_code     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  client_id    :bigint(8)
#
# Indexes
#
#  index_addresses_on_client_id  (client_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_id => clients.id)
#

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
