# == Schema Information
#
# Table name: image_cashieros
#
#  id          :bigint(8)        not null, primary key
#  image       :string           not null
#  visible     :boolean          default(TRUE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cashiero_id :bigint(8)
#
# Indexes
#
#  index_image_cashieros_on_cashiero_id  (cashiero_id)
#
# Foreign Keys
#
#  fk_rails_...  (cashiero_id => cashieros.id)
#

class ImageCashiero < ApplicationRecord

	# Relactions
  	belongs_to :cashiero

  	# Validates
  	validates :image, presence: true

	mount_uploader :image, ReceiptUploader
end
