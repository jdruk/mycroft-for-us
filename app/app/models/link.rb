# == Schema Information
#
# Table name: links
#
#  id         :bigint(8)        not null, primary key
#  login      :string
#  password   :string
#  status     :integer
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Link < ApplicationRecord
end
