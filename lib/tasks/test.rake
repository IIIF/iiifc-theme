require 'iiifc'

namespace :test do
  desc 'Check html'
  task :html do
    opts = {
      check_html: true,
      checks: ['Images']
    }
    HTMLProofer.check_directory(SITE_DIR, opts).run
  end

  namespace :links do
    desc 'Check for internal link errors'
    task :internal do
      puts 'Checking for internal link errors'
      opts = {
        checks: ['Links'],
        disable_external: true,
        enforce_https: false,
        internal_domains: ['localhost:4000'],
      }
      HTMLProofer.check_directory(SITE_DIR, opts).run
    end

    # desc 'Check for *iiif.io* link errors'
    # task :iiif do
    #   puts 'Checking for link errors in *iiif.io* sites'
    #   opts = {
    #     checks_to_ignore: ['ImageCheck', 'HtmlCheck', 'ScriptCheck'],
    #     url_ignore: [/^((?!iiif\.io).)*$/, 'github'] # temporarily ignore iiif.io github repo errors
    #   }
    #   HTMLProofer.check_directory(SITE_DIR, opts).run
    # end

    desc 'Check for external link rot'
    task :external do
      puts 'Checking for external link errors'
      opts = {
        enforce_https: false,
        ignore_status_codes: [429],
        only_4xx: true,
        swap_urls: { %r{^http\://localhost\:4000} => 'https://iiif.io' },
        checks: ['Links','Images'],
        ignore_urls: [/.*iiif\.io.*/], 
        ignore_files: [/.*news\/.*/]
      }
      HTMLProofer.check_directory(SITE_DIR, opts).run
    end

    desc 'Run rspec tests (if they exist)'
    task :spec do

    end
  end
end
