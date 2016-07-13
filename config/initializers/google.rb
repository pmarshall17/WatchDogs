if Rails.env.development?
  google = "#{Rails.root}/config/google.yml"
  if File.exists? google
    config = YAML.load_file(google)
    config.each { |key, value| ENV[key] = value }
  else
    raise "cp config/google.yml.example"
  end
end