# == Schema Information
#
# Table name: concentrators
#
#  id         :bigint(8)        not null, primary key
#  address    :string
#  hostname   :string
#  login      :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ConcentratorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
