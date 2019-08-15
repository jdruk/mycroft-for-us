# == Schema Information
#
# Table name: lease6_types
#
#  lease_type :integer          not null
#  name       :string(5)
#

class KeaLease6Type < ApplicationRecord
  def self.table_name
    'lease6_types'
  end

  def self.primary_key
    'lease6_types'
  end

end
