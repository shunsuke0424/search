json.companies @companies do |company|
  json.extract! company, :id, :name, :number
end