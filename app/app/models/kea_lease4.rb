# == Schema Information
#
# Table name: lease4
#
#  address        :bigint(8)        not null, primary key
#  expire         :datetime
#  fqdn_fwd       :boolean
#  fqdn_rev       :boolean
#  hostname       :string(255)
#  hwaddr         :binary
#  state          :bigint(8)        default(0)
#  user_context   :text
#  valid_lifetime :bigint(8)
#  client_id      :binary
#  subnet_id      :bigint(8)
#
# Indexes
#
#  lease4_by_client_id_subnet_id  (client_id,subnet_id)
#  lease4_by_hwaddr_subnet_id     (hwaddr,subnet_id)
#  lease4_by_state_expire         (state,expire)
#  lease4_by_subnet_id            (subnet_id)
#
# Foreign Keys
#
#  fk_lease4_state  (state => lease_state.state)
#


class KeaLease4 < ApplicationRecord
  def self.table_name
    'lease4'
  end

  def self.primary_key
    'address'
  end

  belongs_to :kea_lease_state, class_name: 'KeaLeaseState', foreign_key: 'state', primary_key: 'state' 

end


