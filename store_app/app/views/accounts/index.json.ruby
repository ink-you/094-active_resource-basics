# json.array!(@accounts) do |account|
#   json.extract! account, :id, :first_name, :last_name, :return, :program_id, :address, :phone
#   json.url account_url(account, format: :json)
# end

# accounts_hashes = @accounts.map do |account|
#   { id: account.id,
#   first_name: account.first_name,
#   last_name: account.last_name,
#   return: account.return,
#   program_id: account.program_id,
#   address: account.address,
#   phone: account.phone,
#   created_at: account.created_at,
#   updated_at: account.updated_at }
# end
# accounts_hashes.to_json

# @accounts.map(&:attributes).to_json
@accounts.to_json
# @accounts.as_json.to_json
