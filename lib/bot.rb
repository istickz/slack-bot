require 'slack'

Slack.configure do |config|
  config.token = ENV['SLACK_TOKEN']
end

auth = Slack.auth_test
raise auth['error'] unless auth['ok']

client = Slack.realtime

client.on :hello do
  puts 'Successfully connected.'
end

client.on :message do |data|
  case data['text']
  when /^привет/
    Slack.reactions_add channel: data['channel'],
                        name: 'hand',
                        timestamp: data['ts']
  end
end

client.start
