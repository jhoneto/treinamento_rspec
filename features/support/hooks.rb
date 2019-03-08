Before do |scenario|
  # Start transaction for this test
  DatabaseCleaner.start
  # Switch into the default tenant
  Apartment::Tenant.switch! 'demo'

  puts "setando schema"
end

After do |scenario|
  # Reset tentant back to `public`
  Apartment::Tenant.reset
  # Rollback transaction
  DatabaseCleaner.clean
end