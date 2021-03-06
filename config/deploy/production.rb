# frozen_string_literal: true

set :rails_env,   'production'

# This is the public IP, if we deploy through VPN we will have to change this
# set :servers,     ["202.8.8.238"]
# These are the internal IP addresses if you are connected via VPN
set :servers,     ['10.1.1.23']
# Changed to master as we are deploying master to the staging server for pre-live testing
set :branch,      'develop'
set :SMEG_DATABASE_USERNAME, 'deploy'
set :SMEG_DATABASE_PASSWORD, 'password'