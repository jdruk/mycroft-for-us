class KeaHostIdentifierType < ApplicationRecord
  def self.table_name
    'host_identifier_type'
  end

  def self.primary_key
    'type'
  end

end

