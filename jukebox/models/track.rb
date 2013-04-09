class Track < ActiveRecord::Base

	def get_tracks(title)
		client = Soundcloud.new(:client_id => 'a6efaa9c5cc3dd3790f3adbfdd332df1')
		@tracks =  client.get('/tracks', :q => "#{title}")
	end

end
