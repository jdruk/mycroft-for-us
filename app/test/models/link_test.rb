# == Schema Information
#
# Table name: links
#
#  id               :bigint(8)        not null, primary key
#  login            :string
#  password         :string
#  status           :integer          default(0), not null
#  type_link        :integer          default(0), not null
#  visible          :boolean          default(TRUE), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  address_id       :bigint(8)        not null
#  address_range_id :bigint(8)
#  plan_id          :bigint(8)        not null
#
# Indexes
#
#  index_links_on_address_id        (address_id)
#  index_links_on_address_range_id  (address_range_id)
#  index_links_on_plan_id           (plan_id)
#
# Foreign Keys
#
#  fk_rails_...  (address_id => addresses.id)
#  fk_rails_...  (address_range_id => address_ranges.id)
#  fk_rails_...  (plan_id => plans.id)
#

require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
