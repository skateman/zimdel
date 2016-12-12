require 'zimdel/version'
require 'octokit'

module Zimdel
  class << self
    def new(username, password, message)
      @client ||= Octokit::Client.new(login: username, password: password)

      @client.notifications.each do |notification|
        @client.add_comment(notification[:repository][:full_name], notification[:subject][:url][/[0-9]+$/], message)
      end

      @client.mark_notifications_as_read
    end
  end
end
