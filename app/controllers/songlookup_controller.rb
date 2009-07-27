class SonglookupController < ApplicationController
  def index
	param = params[:song]
	@song = Song.new
	@song.name = param[:name]
	@song.artist = param[:artist]

	trackInfo = JukeboxController.getTrackInfo(@song.artist, @song.name)
	@tags = trackInfo["track"]["toptags"]["tag"]
  end
  
end
