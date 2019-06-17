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

class Cashiero < ApplicationRecord

	# Relactions
	has_many :image_cashieros
	belongs_to :user
	belongs_to :bank_account
	belongs_to :category

	# Validates 
	validates :operation, presence: true
	validates :payment_type, presence: true
	validates :value_cents, presence: true
	validates :value_currency, presence: true
	validates :user_id, presence: true

	accepts_nested_attributes_for :image_cashieros, reject_if: :all_blank, allow_destroy: true

	enum payment_type: { dinheiro: 0, cheque: 1, "transferência bancaria" => 2 }
	enum operation: {entrada: 1, saida: 0}	

	monetize :value_cents
end
