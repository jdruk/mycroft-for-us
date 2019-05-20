# == Schema Information
#
# Table name: bank_accounts
#
#  id         :bigint(8)        not null, primary key
#  account    :string           not null
#  agency     :string           not null
#  digit      :string
#  name       :string           not null
#  visible    :boolean          default(TRUE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BankAccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
