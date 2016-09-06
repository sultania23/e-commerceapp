# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

namespace :test do
  desc "Run only the tests in the `test/services` directory"
  task :services  => "test:prepare" do
    $: << "test"
    Rails::TestRunner.run(["test/services"])
  end
end