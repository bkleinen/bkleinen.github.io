require 'html/proofer'

task :test do
  sh "bundle exec jekyll build"
  ignore = ['http://localhost:3000']
  ignore << 'http://update.eclemma.org/' # site is correct, but cannot be loaded from browser
  HTML::Proofer.new("./_site",url_ignore: ignore).run
end
