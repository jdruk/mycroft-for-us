class KeaDhcpOptionScope < ApplicationRecord
  def self.table_name
    'dhcp_option_scope'
  end

  def self.primary_key
    'scope_id'
  end

end
