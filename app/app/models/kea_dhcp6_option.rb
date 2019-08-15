# == Schema Information
#
# Table name: dhcp6_options
#
#  code              :integer          not null
#  dhcp_client_class :string(128)
#  formatted_value   :text
#  persistent        :boolean          default(FALSE), not null
#  space             :string(128)
#  user_context      :text
#  value             :binary
#  dhcp6_subnet_id   :bigint(8)
#  host_id           :integer
#  option_id         :integer          not null, primary key
#  scope_id          :integer          not null
#
# Indexes
#
#  fk_dhcp6_options_host1_idx  (host_id)
#  fk_dhcp6_options_scope_idx  (scope_id)
#
# Foreign Keys
#
#  fk_dhcp6_option_scode  (scope_id => dhcp_option_scope.scope_id) ON DELETE => cascade
#  fk_options_host10      (host_id => hosts.host_id) ON DELETE => cascade
#

class KeaDhcp6Option < ApplicationRecord
  def self.table_name
    'dhcp6_options'
  end

  def self.primary_key
    'option_id'
  end

  belongs_to :kea_dhcp_option_scope, class_name: 'KeaDhcpOptionScope', foreign_key: 'scope_id', primary_key: 'scope_id' 
  belongs_to :kea_host, class_name: 'KeaHost', foreign_key: 'host_id', primary_key: 'host_id' 

end

