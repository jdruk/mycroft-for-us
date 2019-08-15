# == Schema Information
#
# Table name: lease4_stat
#
#  leases    :bigint(8)
#  state     :bigint(8)        not null
#  subnet_id :bigint(8)        not null, primary key
#

class KeaLease4Stat < ApplicationRecord
  def self.table_name
    'lease4_stat'
  end

  def self.primary_key
    'subnet_id'
  end

end

