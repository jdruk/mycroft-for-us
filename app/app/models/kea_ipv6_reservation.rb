# == Schema Information
#
# Table name: ipv6_reservations
#
#  address        :string(39)       not null
#  dhcp6_iaid     :integer
#  prefix_len     :integer          default(128), not null
#  type           :integer          default(0), not null
#  host_id        :integer          not null
#  reservation_id :integer          not null, primary key
#
# Indexes
#
#  fk_ipv6_reservations_host_idx  (host_id)
#  key_dhcp6_address_prefix_len   (address,prefix_len) UNIQUE
#
# Foreign Keys
#
#  fk_ipv6_reservations_host  (host_id => hosts.host_id) ON DELETE => cascade
#

class KeaIPV6Reservation < ApplicationRecord
  def self.table_name
    'ipv6_reservations'
  end

  def self.primary_key
    'reservation_id'
  end

end
