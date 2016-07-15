namespace :scrape do 
	desc "Scrape all Outreach information from USO"
	task uso_outreach: :environemnt do
		agent = Mechanize.new
		agent.user_agent_alias = "Mac Safari"

		#homepage
		page = agent.get('https://www.uso.org/centers/united-states')

		containers = page.search('.u-row')

		binding.pry

		phone_count = 0

		containers.each do |each|
			title = container.search('.CenterCard')
			
			Outreach.create(name: name, address: address)
		end

		page.search('#pagnNextLink').click
    puts "#{phone_count} locations created from USO"
  end
end