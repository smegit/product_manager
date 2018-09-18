# frozen_string_literal: true

set :rails_env,   'staging'

# This is the public IP, if we deploy through VPN we will have to change this
# set :servers,     ["202.8.8.238"]
# These are the internal IP addresses if you are connected via VPN
set :servers,     ['']
# Changed to master as we are deploying master to the staging server for pre-live testing
set :branch,      'develop'
