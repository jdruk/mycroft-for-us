# == Schema Information
#
# Table name: host_identifier_type
#
#  name :string(32)
#  type :integer          not null, primary key
#

class KeaHostIdentifierType < ApplicationRecord
  def self.table_name
    'host_identifier_type'
  end

  def self.primary_key
    'type'
  end

end

