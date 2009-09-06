# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_chat_session',
  :secret      => '23357e73c8f1642593fee5b889136d6468beb5653c7c829b3e61d9ed5b58faee2b1a3ddc35284069c4567fde8731d4d62dc5677a908b8c2d15f88c0f515ebd39'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
