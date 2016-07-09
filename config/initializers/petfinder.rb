if Rails.env.development?
  watchdogs = "#{Rails.root}/config/petfinder.yml"
  if File.exists? watchdogs
    config = YAML.load_file(watchdogs)
    config.each { |key, value| ENV[key] = value }
  else
    raise "cp config/petfinder.yml.example"
  end
end

Petfinder.configure do |config|
  config.api_key = ENV["PET_CONSUMER_KEY"]
  config.api_secret = ENV["PET_CONSUMER_SECRET"]
end
