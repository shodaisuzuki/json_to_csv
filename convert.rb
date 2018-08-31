require 'json'
require 'csv'

FILE_NAME = 'ruby-param-group.json' 
OUTPUT_FILE_NAME = 'ruby-convert.csv'

File.open(FILE_NAME) do |file|
  hash = JSON.load(file)
  parameters = hash["Parameters"]
  CSV.open(OUTPUT_FILE_NAME, "w") do |row|
    row << ["ParameterName", "ParameterValue"]
    parameters.each do |params|
      name = params["ParameterName"]
      value = params["ParameterValue"] || "default"
      row << [name,value]
    end
  end
end
