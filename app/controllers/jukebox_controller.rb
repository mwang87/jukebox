class JukeboxController < ApplicationController
before_filter :login_required
require 'rubygems'
require 'httparty'
require 'json'
#require 'gingerhendrix-scrobbler2'
  def index
	response = getTopTags
	@tags = JSON.parse(response.body)["toptags"]["tag"]
  end

  def getTopTags
      api_key = "02e45d64712a174bf95fc76b4b9b67dc"	
      method = "tag.getTopTags"
      query = {}
      options = {}
       query = query.merge({:api_key => api_key, :method => method, :format => "json"})
      options = options.merge({:query => query})
      response = HTTParty.get('http://ws.audioscrobbler.com/2.0/', options)
  end
end
