# == Schema Information
#
# Table name: lease_hwaddr_source
#
#  hwaddr_source :integer          not null
#  name          :string(40)
#

class KeaLeaseHwaddrSource < ApplicationRecord
  def self.table_name
    'lease_hwaddr_source'
  end

  def self.primary_key
    'hwadrr_source'
  end

end

