# == Schema Information
#
# Table name: categories
#
#  id          :bigint(8)        not null, primary key
#  description :string
#  name        :string           not null
#  visible     :boolean          default(TRUE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ApplicationRecord
	validates :name, presence: true
	validates :description, presence: true
end
