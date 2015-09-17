require 'html/proofer'

$ignore = ['http://localhost:3000']
$ignore << 'http://update.eclemma.org/' # site is correct, but cannot be loaded from browser

task :run_jekyll do
    sh "bundle exec jekyll build"
end

namespace "test" do
  task :links => :run_jekyll do
    HTML::Proofer.new("./_site",url_ignore: $ignore).run
  end

  task :internal_links => :run_jekyll do
    HTML::Proofer.new("./_site",url_ignore: $ignore, disable_external: true).run
  end
  task :failer do
    puts "SOMETHING HAPPENED!!!!"
    sh "false"
  end
  task :travis do
    begin
      result = Rake::Task["test:links"].invoke
    rescue => e
        $stderr.puts "Checking the links failed!"
        $stderr.puts "Failed with a #{e.class}, Message: #{e.message}"
        $stderr.puts "re-running for just the external links."
        Rake::Task["test:internal_links"]
    end
  end
end
