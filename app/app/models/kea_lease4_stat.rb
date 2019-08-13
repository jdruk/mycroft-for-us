class KeaLease4Stat < ApplicationRecord
  def self.table_name
    'lease4_stat'
  end

  def self.primary_key
    'subnet_id'
  end

end

