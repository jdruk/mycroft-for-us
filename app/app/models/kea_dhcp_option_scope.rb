# == Schema Information
#
# Table name: dhcp_option_scope
#
#  scope_name :string(32)
#  scope_id   :integer          not null, primary key
#

class KeaDhcpOptionScope < ApplicationRecord
  def self.table_name
    'dhcp_option_scope'
  end

  def self.primary_key
    'scope_id'
  end

end
