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
#  bank_id    :bigint(8)        not null
#
# Indexes
#
#  index_bank_accounts_on_bank_id  (bank_id)
#
# Foreign Keys
#
#  fk_rails_...  (bank_id => banks.id)
#

class BankAccount < ApplicationRecord
	belongs_to :bank

	validates :account, presence: true
	validates :agency, presence: true
	validates :digit, presence: true
	validates :name, presence: true
	validates :bank_id, presence: true

	def self.available
		all = BankAccount.where("visible = true and id <> ?", default.id)
	end

	def self.default
		BankAccount.first
	end
end
