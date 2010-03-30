# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_shopping-fish_session',
  :secret      => 'e0dd3c8c8d919ab5831879a48c59aeb87e8e4112ec8f238237abf8dd1ea87c340beaa838eb8b1ad39a28e50c0afb23841690ca1ab51423da58b9082a2227dc96'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
