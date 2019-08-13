class KeaIPV6Reservation < ApplicationRecord
  def self.table_name
    'ipv6_reservations'
  end

  def self.primary_key
    'reservation_id'
  end

end
