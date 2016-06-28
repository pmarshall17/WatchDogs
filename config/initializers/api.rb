if Rails.env.development?
  api = "#{Rails.root}/config/api.yml"
  if File.exists? api
    config = YAML.load_file(api)
    config.each { |key, value| ENV[key] = value }
  else
    raise "How do you expect this app to work without api.yml?"
  end
end