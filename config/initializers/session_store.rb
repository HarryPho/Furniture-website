# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_TEAM4OFPS_session',
  :secret      => 'c61bba287bfea535292ef5e24df7d29fef7ba0accd269fafadc7f6a32f474d1af4109258f3a2612b155a8782606a600f437282808e79d58ecc9015ac03cbad05'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
