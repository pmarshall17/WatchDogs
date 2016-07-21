class Quiz < ActiveRecord::Base

  def self.search(zip, options = {})
    petfinder = Petfinder::Client.new
    petfinder.find_pets("dog", zip, options)
  end

  # PARSE PARAMS INTO USEABLE VARIABLES
  def self.set_options(params)
    options = {size: '', sex: '', age: '', count: 50 }
    if params[:apartment] == 'on'
      options[:size] = 'S'
    elsif params[:house] == 'on'
      options[:size] = 'L'
    end

    if params[:outside] == 'on'
      params[:energy] = 'high'
    elsif params[:inside] == 'on'
      params[:energy] = 'low'
    end

    if params[:male] == 'on'
      options[:sex] = 'M'
    elsif params[:female] == 'on'
      options[:sex] = 'F'
    end

    if params[:baby] == 'on'
      options[:age] = 'Baby'
    elsif params[:young] == 'on'
      options[:age] = 'Young'
    elsif params[:adult] == 'on'
      options[:age] = 'Adult'
    elsif params[:senior] == 'on'
      options[:age] = 'Senior'
    end
   return options
  end
end
