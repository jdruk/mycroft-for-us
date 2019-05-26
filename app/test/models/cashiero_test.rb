# == Schema Information
#
# Table name: cashieros
#
#  id              :bigint(8)        not null, primary key
#  description     :string
#  operation       :integer          not null
#  payment_type    :integer          default("dinheiro"), not null
#  value_cents     :integer          default(0), not null
#  value_currency  :string           default("USD"), not null
#  visible         :boolean          default(TRUE), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  bank_account_id :bigint(8)
#  category_id     :bigint(8)
#  user_id         :bigint(8)        not null
#
# Indexes
#
#  index_cashieros_on_bank_account_id  (bank_account_id)
#  index_cashieros_on_category_id      (category_id)
#  index_cashieros_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (bank_account_id => bank_accounts.id)
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class CashieroTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
