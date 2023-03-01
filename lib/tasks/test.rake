require 'iiifc'

namespace :test do
  desc 'Check Images and Scripts'
  task :html do
    opts = {
      checks: ['Images', 'Scripts']
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


    desc 'Check for external link rot'
    task :external do
      puts 'Checking for external link errors'
      opts = {
        enforce_https: false,
        ignore_status_codes: [429],
        only_4xx: true,
        checks: ['Links','Images'],
        url_ignore: [/.*iiif\.io.*/],
        ignore_files: [/.*news\/.*/]
      }
      HTMLProofer.check_directory(SITE_DIR, opts).run
    end

    desc 'Check for https link errors'
    task :https do
      puts 'Checking for https link errors'
      opts = {
        enforce_https: true,
        checks: ['Links','Images'],
        url_ignore: [/.*iiif\.io.*/],
        ignore_files: [/.*news\/.*/]
      }
      HTMLProofer.check_directory(SITE_DIR, opts).run
    end

    desc 'Run rspec tests (if they exist)'
    task :spec do

    end
  end
end
