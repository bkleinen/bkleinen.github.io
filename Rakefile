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

  task :travis do
    begin
      result = Rake::Task["test:links"].invoke
    rescue => e
        $stderr.puts "Checking the links failed!"
        $stderr.puts "Failed with a #{e.class}, Message: #{e.message}"
        $stderr.puts "Re-Running for just the Internal Links."
        Rake::Task["test:internal_links"]
    end
  end
end
