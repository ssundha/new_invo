# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_new_invo_session',
  :secret      => 'bace5031c4c68e5a4701687c219062b300435454b0fbe7139ff5eb4c4df3d135e7e8e765bc9ecdda130fa72b48c7ebcd96634234d0cfc00b8489325a00d340b9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
