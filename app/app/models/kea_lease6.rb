class KeaLease6 < ApplicationRecord
  def self.table_name
    'lease6'
  end

  def self.primary_key
    'address'
  end

  belongs_to :kea_lease_state, class_name: 'KeaLeaseState', foreign_key: 'state', primary_key: 'state' 

end
