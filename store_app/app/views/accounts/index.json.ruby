# json.array!(@accounts) do |account|
#   json.extract! account, :id, :first_name, :last_name, :return, :program_id, :address, :phone
#   json.url account_url(account, format: :json)
# end

@accounts.map(&:attributes).to_json
