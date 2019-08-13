class KeaLeaseState < ApplicationRecord
  def self.table_name
    'lease_state'
  end

  def self.primary_key
    'state'
  end

end

