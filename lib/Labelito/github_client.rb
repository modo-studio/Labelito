require 'octokit'
require_relative "label"

module Labelito
  class GithubClient

    def initialize(token)
      @client = Octokit::Client.new(:access_token => token)
    end

    def self.with_octokit_client(client)
      @client = client
    end

    def labels(repository)
      @client.labels(repository).map do |label|
        Label.from_github_label(label)
      end
    end

    def update(labels, repository)
      old_labels = @client.labels(repository)
      old_labels.each { |label| @client.delete_label(repository, label[:name]) }
      labels.each do |label|
        @client.add_label(repository, label.name, label.color)
      end
    end

  end
end