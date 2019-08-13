class KeaLeaseHwaddrSource < ApplicationRecord
  def self.table_name
    'lease_hwaddr_source'
  end

  def self.primary_key
    'hwadrr_source'
  end

end

