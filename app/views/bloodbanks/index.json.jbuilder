json.array!(@bloodbanks) do |bloodbank|
  json.extract! bloodbank, :id, :name, :address, :city, :email, :mobile, :website, :landline
  json.url bloodbank_url(bloodbank, format: :json)
end
