# == Schema Information
#
# Table name: hosts
#
#  auth_key              :string(32)
#  dhcp4_boot_file_name  :string(128)
#  dhcp4_client_classes  :string(255)
#  dhcp4_next_server     :bigint(8)
#  dhcp4_server_hostname :string(64)
#  dhcp6_client_classes  :string(255)
#  dhcp_identifier       :binary           not null
#  dhcp_identifier_type  :integer          not null
#  hostname              :string(255)
#  ipv4_address          :bigint(8)
#  user_context          :text
#  dhcp4_subnet_id       :bigint(8)
#  dhcp6_subnet_id       :bigint(8)
#  host_id               :integer          not null, primary key
#
# Indexes
#
#  fk_host_identifier_type           (dhcp_identifier_type)
#  key_dhcp4_identifier_subnet_id    (dhcp_identifier,dhcp_identifier_type,dhcp4_subnet_id) UNIQUE WHERE ((dhcp4_subnet_id IS NOT NULL) AND (dhcp4_subnet_id <> 0))
#  key_dhcp4_ipv4_address_subnet_id  (ipv4_address,dhcp4_subnet_id) UNIQUE WHERE ((ipv4_address IS NOT NULL) AND (ipv4_address <> 0))
#  key_dhcp6_identifier_subnet_id    (dhcp_identifier,dhcp_identifier_type,dhcp6_subnet_id) UNIQUE WHERE ((dhcp6_subnet_id IS NOT NULL) AND (dhcp6_subnet_id <> 0))
#
# Foreign Keys
#
#  fk_host_identifier_type  (dhcp_identifier_type => host_identifier_type.type) ON DELETE => cascade
#

class KeaHost < ApplicationRecord
  def self.table_name
    'hosts'
  end

  def self.primary_key
    'host_id'
  end

  # Relations
  belongs_to :kea_host_identifier_type, class_name: 'KeaHostIdentifierType', foreign_key: 'dhcp_identifier_type', primary_key: 'type' 

end

