# == Schema Information
#
# Table name: concentrators
#
#  id         :bigint(8)        not null, primary key
#  address    :string           not null
#  hostname   :string           not null
#  login      :string           not null
#  password   :string           not null
#  visible    :boolean          default(TRUE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ConcentratorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
