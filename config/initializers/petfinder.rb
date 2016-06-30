# dog.rbif Rails.env.development?
#   tumblr = "#{Rails.root}/config/tumblr.yml"
#   if File.exists? tumblr
#     config = YAML.load_file(tumblr)
#     config.each { |key, value| ENV[key] = value }
#   else
#     raise "cp config/tumblr.yml.example "
#   end
# end

# Petfinder.configure do |config|
#   config.api_key = '3cb99c576efa43d0164ed946c198bc20'
#   config.api_secret = '6160988306a1338b6b72738e265bf519'
# end