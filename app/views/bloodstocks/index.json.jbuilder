json.array!(@bloodstocks) do |bloodstock|
  json.extract! bloodstock, :id, :bloodbank_id, :bloodcomponentid, :bloodgroupid, :units
  json.url bloodstock_url(bloodstock, format: :json)
end
