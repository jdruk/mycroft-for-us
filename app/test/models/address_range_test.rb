# == Schema Information
#
# Table name: address_ranges
#
#  id              :bigint(8)        not null, primary key
#  end_range       :inet             not null
#  name            :string           not null
#  start_range     :inet             not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  concentrator_id :bigint(8)
#
# Indexes
#
#  index_address_ranges_on_concentrator_id  (concentrator_id)
#
# Foreign Keys
#
#  fk_rails_...  (concentrator_id => concentrators.id)
#

require 'test_helper'

class AddressRangeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
