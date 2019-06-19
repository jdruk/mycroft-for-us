# == Schema Information
#
# Table name: clients
#
#  id          :bigint(8)        not null, primary key
#  cell        :string           not null
#  cpf         :string           not null
#  description :text
#  name        :string           not null
#  phone       :string
#  rg          :string
#  visible     :boolean          default(TRUE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
