# == Schema Information
#
# Table name: addresses
#
#  id           :bigint(8)        not null, primary key
#  address      :string           not null
#  city         :string           not null
#  complement   :string           not null
#  latitude     :decimal(, )
#  longitude    :decimal(, )
#  neighborhood :string           not null
#  number       :string
#  state        :string           not null
#  visible      :boolean          default(TRUE), not null
#  zip_code     :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  client_id    :bigint(8)        not null
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
