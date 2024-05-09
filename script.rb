#!/usr/bin/ruby

require 'date'
require 'json'
require 'net/http'

require_relative './os_version.rb'
require_relative './profile.rb'
require_relative './sofa.rb'

sofa = Sofa.new

generated_profile = Profile.generate

# Upload to your MDM here
