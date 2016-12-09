json.extract! account, :id, :bank, :agency, :number, :user_id, :created_at, :updated_at
json.url account_url(account, format: :json)