class KeaHost < ApplicationRecord
  def self.table_name
    'hosts'
  end

  def self.primary_key
    'host_id'
  end

  belongs_to :kea_host_identifier_type, class_name: 'KeaHostIdentifierType', foreign_key: 'dhcp_identifier_type', primary_key: 'type' 

end

