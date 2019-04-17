# == Schema Information
#
# Table name: plan_of_data
#
#  id                    :bigint(8)        not null, primary key
#  name                  :string           not null
#  velocity_max_download :integer          not null
#  velocity_max_upload   :integer          not null
#  visible               :boolean          default(TRUE), not null
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
