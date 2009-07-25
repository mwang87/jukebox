class JukeboxController < ApplicationController
before_filter :login_required
require 'rubygems'
require 'scrobbler2'
#require 'gingerhendrix-scrobbler2'
  def index
#	Scrobbler2::Base.api_key = "02e45d64712a174bf95fc76b4b9b67dc"	
  end

end
