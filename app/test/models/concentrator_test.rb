# == Schema Information
#
# Table name: concentrators
#
#  id               :bigint(8)        not null, primary key
#  address          :string           not null
#  hostname         :string           not null
#  login            :string           not null
#  password         :string           not null
#  visible          :boolean          default(TRUE), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  address_range_id :bigint(8)
#
# Indexes
#
#  index_concentrators_on_address_range_id  (address_range_id)
#
# Foreign Keys
#
#  fk_rails_...  (address_range_id => address_ranges.id)
#

require 'test_helper'

class ConcentratorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
