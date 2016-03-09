require 'bundler/setup'
require 'dotenv'
Dotenv.load
require 'heroku-api'

task :scale_up do
  scale_worker ENV['HEROKU_WORKER_HIGH']
end

task :scale_down do
  scale_worker ENV['HEROKU_WORKER_LOW']
end

def scale_worker(count)
  heroku = Heroku::API.new api_key: ENV['HEROKU_API_KEY']
  heroku.post_ps_scale(ENV['HEROKU_APP_NAME'], 'worker', count)
end