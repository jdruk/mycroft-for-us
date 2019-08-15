# == Schema Information
#
# Table name: lease6
#
#  address        :string(39)       not null, primary key
#  duid           :binary
#  expire         :datetime
#  fqdn_fwd       :boolean
#  fqdn_rev       :boolean
#  hostname       :string(255)
#  hwaddr         :binary
#  hwaddr_source  :integer
#  hwtype         :integer
#  iaid           :integer
#  lease_type     :integer
#  pref_lifetime  :bigint(8)
#  prefix_len     :integer
#  state          :bigint(8)        default(0)
#  user_context   :text
#  valid_lifetime :bigint(8)
#  subnet_id      :bigint(8)
#
# Indexes
#
#  lease6_by_duid_iaid_subnet_id   (duid,iaid,subnet_id)
#  lease6_by_state_expire          (state,expire)
#  lease6_by_subnet_id_lease_type  (subnet_id,lease_type)
#
# Foreign Keys
#
#  fk_lease6_state  (state => lease_state.state)
#  fk_lease6_type   (lease_type => lease6_types.lease_type)
#

class KeaLease6 < ApplicationRecord
  def self.table_name
    'lease6'
  end

  def self.primary_key
    'address'
  end

  belongs_to :kea_lease_state, class_name: 'KeaLeaseState', foreign_key: 'state', primary_key: 'state' 

end
