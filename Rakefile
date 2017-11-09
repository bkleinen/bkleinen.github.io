require 'html-proofer'

$ignore = ['http://localhost:3000']
$ignore << 'http://update.eclemma.org/' # site is correct, but cannot be loaded from browser
$ignore << 'https://github.com/htw-imi-wt1wa-ws2015/ruby-learning/settings/collaboration' #needs credentials
$ignore << '/github.com\/htw-imi-info1.*ws2016/'
$ignore << '#'


desc "default task: check all links"
task :default => ["test:links"]

desc "Run Jekyll"
task :run_jekyll do
    sh "bundle exec jekyll build"
end

desc "Build HTW Version"
task :run_jekyll_htw do
    sh "bundle exec jekyll build --config _config.yml,_htwconfigrz.yml"
end

namespace "test" do
  desc "Check All Links in HTW Site"
  task :htw_links => :run_jekyll do
    HTMLProofer.check_directory("./_site_htw_rz",url_ignore: $ignore,
     :typhoeus => {
        :ssl_verifypeer => 0, ssl_verifyhost: 0, verbose: false
      }).run
  end

  desc "Check All Links Contained in Site"
  task :links => :run_jekyll do
    HTMLProofer.check_directory("./_site",url_ignore: $ignore,
     :typhoeus => {
        :ssl_verifypeer => 0, ssl_verifyhost: 0, verbose: false
      }).run
  end

  desc "Check Links, Verbose"
  task :links_verbose => :run_jekyll do
    HTMLProofer.check_directory("./_site",url_ignore: $ignore,
     :typhoeus => {
        :ssl_verifypeer => 0, ssl_verifyhost: 0, verbose: true
      }).run
  end

  desc "Check Only Internal Link"
  task :internal_links => :run_jekyll do
    HTMLProofer.check_directory("./_site",url_ignore: $ignore, disable_external: true).run
  end

  desc "Check Only Internal Links, Verbosely"
  task :internal_links_verbose => :run_jekyll do
    HTMLProofer.check_directory("./_site",url_ignore: $ignore, disable_external: true, verbose: true).run
  end

  desc "Test Suite for Travis C"
  task :travis => :internal_links

  desc "Test Suite for Travis CI with external links"
  task :travis_ext do
    begin
      result = Rake::Task["test:links"].invoke
    rescue => e
        $stderr.puts "Checking the links failed!"
        $stderr.puts "Failed with a #{e.class}, Message: #{e.message}"
        $stderr.puts "Re-Running for just the Internal Links."
        result = Rake::Task["test:internal_links"].invoke
    end
  end

  desc "Verbose Test Suite for Travis CI with external links"
  task :travis_verbose_ext do
    begin
      result = Rake::Task["test:links_verbose"].invoke
    rescue => e
        $stderr.puts "Checking the links failed!"
        $stderr.puts "Failed with a #{e.class}, Message: #{e.message}"
        $stderr.puts "Re-Running for just the Internal Links."
        result = Rake::Task["test:internal_links_verbose"].invoke
    end
  end
end
