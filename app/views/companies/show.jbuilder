json.company do
  json.extract! @company, :id, :name, :number, :detail, :place
end