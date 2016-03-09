require 'slack'

Slack.configure do |config|
  config.token = ENV['SLACK_UFACODE_TOKEN']
end


auth = Slack.auth_test
fail auth['error'] unless auth['ok']

client = Slack.realtime

client.on :hello do
  puts 'Successfully connected.'
end

client.on :message do |data|
  case data['text']
    when /^привет/
      Slack.reactions_add channel: data['channel'], name: 'hand', timestamp: data['ts']
  end
end


