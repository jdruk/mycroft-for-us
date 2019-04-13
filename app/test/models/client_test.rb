# == Schema Information
#
# Table name: clients
#
#  id         :bigint(8)        not null, primary key
#  cpf        :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
