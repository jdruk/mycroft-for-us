class KeaDhcp4Option < ApplicationRecord
  def self.table_name
    'dhcp4_options'
  end

  def self.primary_key
    'option_id'
  end
  
  belongs_to :kea_dhcp_option_scope, class_name: 'KeaDhcpOptionScope', foreign_key: 'scope_id', primary_key: 'scope_id' 
  belongs_to :kea_host, class_name: 'KeaHost', foreign_key: 'host_id', primary_key: 'host_id' 

end

