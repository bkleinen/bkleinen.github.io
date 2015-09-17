require 'html/proofer'

$ignore = ['http://localhost:3000']
$ignore << 'http://update.eclemma.org/' # site is correct, but cannot be loaded from browser

task :run_jekyll do
    sh "bundle exec jekyll build"
end

task :test => :run_jekyll do
  HTML::Proofer.new("./_site",url_ignore: $ignore).run
end

task :test_internal => :run_jekyll do
  HTML::Proofer.new("./_site",url_ignore: $ignore, disable_external: true).run
end
