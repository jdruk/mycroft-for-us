# Mapeamento das tabelas do Kea 1.5

class KeaLease4 < ApplicationRecord
  def self.table_name
    'lease4'
  end

  def self.primary_key
    'address'
  end

end

class KeaLease6 < ApplicationRecord
  def self.table_name
    'lease6'
  end

  def self.primary_key
    'address'
  end

end

class KeaLease6Types < ApplicationRecord
  def self.table_name
    'lease6_types'
  end

  def self.primary_key
    'lease6_types'
  end

end

class KeaLeaseState < ApplicationRecord
  def self.table_name
    'lease_state'
  end

  def self.primary_key
    'state'
  end

end

class KeaLeaseHwaddrSource < ApplicationRecord
  def self.table_name
    'lease_hwaddr_source'
  end

  def self.primary_key
    'hwadrr_source'
  end

end

class KeaIPV6Reservation < ApplicationRecord
  def self.table_name
    'ipv6_reservations'
  end

  def self.primary_key
    'reservation_id'
  end

end

class KeaDhcp6Option < ApplicationRecord
  def self.table_name
    'dhcp6_options'
  end

  def self.primary_key
    'option_id'
  end

end

class KeaDhcp4Option < ApplicationRecord
  def self.table_name
    'dhcp4_options'
  end

  def self.primary_key
    'option_id'
  end

end


class KeaDhcpOptionScope < ApplicationRecord
  def self.table_name
    'dhcp_option_scope'
  end

  def self.primary_key
    'scope_id'
  end

end


class KeaHost < ApplicationRecord
  def self.table_name
    'hosts'
  end

  def self.primary_key
    'host_id'
  end

end

class KeaHostIdentifierType < ApplicationRecord
  def self.table_name
    'host_identifier_type'
  end

  def self.primary_key
    'type'
  end

end

class KeaLease4Stat < ApplicationRecord
  def self.table_name
    'lease4_stat'
  end

  def self.primary_key
    'subnet_id'
  end

end

class KeaLease6Stat < ApplicationRecord
  def self.table_name
    'lease6_stat'
  end

  def self.primary_key
    'subnet_id'
  end

end


class KeaLog < ApplicationRecord
  def self.table_name
    'log'
  end

end
