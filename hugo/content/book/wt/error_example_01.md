09:55:02-kleinen~/mine/current/htw/imi-maps/code/imimaps-master (fix-content-not-shown)$ rspec ./spec/features/internal_area/search_spec.rb

An error occurred while loading ./spec/features/internal_area/search_spec.rb.
Failure/Error: load file

SyntaxError:
  /Users/kleinen/mine/current/htw/imi-maps/code/imimaps-master/spec/features/internal_area/search_spec.rb:36: syntax error, unexpected end-of-input, expecting keyword_end
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/rspec-core-3.6.0/lib/rspec/core/configuration.rb:1922:in `load'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/rspec-core-3.6.0/lib/rspec/core/configuration.rb:1922:in `load_spec_file_handling_errors'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/rspec-core-3.6.0/lib/rspec/core/configuration.rb:1494:in `block in load_spec_files'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/rspec-core-3.6.0/lib/rspec/core/configuration.rb:1492:in `each'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/rspec-core-3.6.0/lib/rspec/core/configuration.rb:1492:in `load_spec_files'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/rspec-core-3.6.0/lib/rspec/core/runner.rb:100:in `setup'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/rspec-core-3.6.0/lib/rspec/core/runner.rb:86:in `run'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/rspec-core-3.6.0/lib/rspec/core/runner.rb:71:in `run'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/rspec-core-3.6.0/lib/rspec/core/runner.rb:45:in `invoke'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/rspec-core-3.6.0/exe/rspec:4:in `<top (required)>'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/bin/rspec:22:in `load'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/bin/rspec:22:in `<main>'
#
#   Showing full backtrace because every line was filtered out.
#   See docs for RSpec::Configuration#backtrace_exclusion_patterns and
#   RSpec::Configuration#backtrace_inclusion_patterns for more information.
No examples found.

An error occurred in a `before(:suite)` hook.
Failure/Error: DatabaseCleaner.strategy = :transaction

DatabaseCleaner::NoORMDetected:
  No known ORM was detected!  Is ActiveRecord, DataMapper, Sequel, MongoMapper, Mongoid, Moped, or CouchPotato, Redis or Ohm loaded?
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/database_cleaner-1.6.1/lib/database_cleaner/base.rb:150:in `autodetect'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/database_cleaner-1.6.1/lib/database_cleaner/base.rb:12:in `initialize'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/database_cleaner-1.6.1/lib/database_cleaner/configuration.rb:46:in `new'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/database_cleaner-1.6.1/lib/database_cleaner/configuration.rb:46:in `connections'
# /Users/kleinen/.rvm/gems/ruby-2.4.1@imi-maps-rails42/gems/database_cleaner-1.6.1/lib/database_cleaner/configuration.rb:65:in `strategy='
# ./spec/spec_helper.rb:150:in `block (2 levels) in <top (required)>'


Finished in 0.01022 seconds (files took 1.41 seconds to load)
0 examples, 0 failures, 2 errors occurred outside of examples

Coverage report generated for RSpec to /Users/kleinen/mine/current/htw/imi-maps/code/imimaps-master/coverage. 6 / 10 LOC (60.0%) covered.
