class JukeboxController < ApplicationController
before_filter :login_required
require 'rubygems'
require 'httparty'
require 'json'
  def index
#	response = JukeboxController.getTopTags
#	@tags = JSON.parse(response.body)["toptags"]["tag"]
	@tags = Tag.find(:all)
  end

  def JukeboxController.getTopTags
      api_key = "02e45d64712a174bf95fc76b4b9b67dc"	
      method = "tag.getTopTags"
      query = {}
      options = {}
       query = query.merge({:api_key => api_key, :method => method, :format => "json"})
      options = options.merge({:query => query})
      response = HTTParty.get('http://ws.audioscrobbler.com/2.0/', options)
  end
end
