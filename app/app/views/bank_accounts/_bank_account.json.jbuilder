json.extract! bank_account, :id, :name, :bank, :account, :agency, :digit, :visible, :created_at, :updated_at
json.url bank_account_url(bank_account, format: :json)
