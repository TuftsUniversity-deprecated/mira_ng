# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

# Get rid of the default task (was spec)
task :default => []
Rake::Task[:default].clear

require 'resque/tasks'
require 'solr_wrapper/rake_task'

require 'solr_wrapper'
require 'fcrepo_wrapper'

desc 'Run the default CI configuration'
task :ci do
  SolrWrapper.wrap port: 8985 do |solr|
    solr.with_collection(name: 'hydra-test', dir: 'solr/config')

    FcrepoWrapper.wrap port: 8986 do
      # Something that requires Fcrepo
      Rake::Task['spec'].invoke
    end
  end
end

desc 'Run a dev environment'
task :dev do
  SolrWrapper.wrap do
    FcrepoWrapper.wrap do
      begin
        sleep
      rescue Interrupt
        puts "Shutting down..."
      end
    end
  end
end

task "resque:setup" => :environment
task :default => [:rubocop, :ci]
