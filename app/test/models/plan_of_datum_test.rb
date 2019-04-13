# == Schema Information
#
# Table name: plan_of_data
#
#  id                    :bigint(8)        not null, primary key
#  name                  :string
#  velocity_max_download :integer
#  velocity_max_upload   :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
# Indexes
#
#  index_plan_of_data_on_name  (name) UNIQUE
#

require 'test_helper'

class PlanOfDatumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
