# == Schema Information
#
# Table name: lease_state
#
#  name  :string(64)       not null
#  state :bigint(8)        not null, primary key
#

class KeaLeaseState < ApplicationRecord
  def self.table_name
    'lease_state'
  end

  def self.primary_key
    'state'
  end

end

