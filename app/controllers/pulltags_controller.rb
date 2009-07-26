class PulltagsController < ApplicationController
  def index
        response = JukeboxController.getTopTags
        @tags = JSON.parse(response.body)["toptags"]["tag"]
	@tags.each do |lastFmTag|
		tag = Tag.new
		tag.name = lastFmTag["name"]
		tag.save
	end		
  end

end
