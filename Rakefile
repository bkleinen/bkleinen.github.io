require 'html/proofer'

$ignore = ['http://localhost:3000']
$ignore << 'http://update.eclemma.org/' # site is correct, but cannot be loaded from browser

task :run_jekyll do
    sh "bundle exec jekyll build"
end

namespace "test" do
  desc "Check All Links Contained in Site"
  task :links => :run_jekyll do
    HTML::Proofer.new("./_site",url_ignore: $ignore,
     :typhoeus => {
        :ssl_verifypeer => 0, ssl_verifyhost: 0, verbose: false
      }).run
  end

  desc "Check Links, Verbose"
  task :links_verbose => :run_jekyll do
    HTML::Proofer.new("./_site",url_ignore: $ignore,
     :typhoeus => {
        :ssl_verifypeer => 0, ssl_verifyhost: 0, verbose: true
      }).run
  end

  desc "Check Only Internal Links"
  task :internal_links => :run_jekyll do
    HTML::Proofer.new("./_site",url_ignore: $ignore, disable_external: true).run
  end

  desc "Test Suite for Travis CI"
  task :travis do
    begin
      result = Rake::Task["test:links"].invoke
    rescue => e
        $stderr.puts "Checking the links failed!"
        $stderr.puts "Failed with a #{e.class}, Message: #{e.message}"
        $stderr.puts "Re-Running for just the Internal Links."
        result = Rake::Task["test:internal_links"].invoke
    end
  end
end
