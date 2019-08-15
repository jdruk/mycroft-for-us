# == Schema Information
#
# Table name: lease6_stat
#
#  lease_type :integer          not null
#  leases     :bigint(8)
#  state      :bigint(8)        not null
#  subnet_id  :bigint(8)        not null, primary key
#

class KeaLease6Stat < ApplicationRecord
  def self.table_name
    'lease6_stat'
  end

  def self.primary_key
    'subnet_id'
  end

end

