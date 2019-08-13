class KeaLease6Stat < ApplicationRecord
  def self.table_name
    'lease6_stat'
  end

  def self.primary_key
    'subnet_id'
  end

end

