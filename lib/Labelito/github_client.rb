require 'octokit'
require_relative "label"

module Labelito
  class GithubClient

    def initialize(client)
      @client = client
    end

    def self.with_token(token)
      GithubClient.new Octokit::Client.new(:access_token => token)
    end

    def labels(repository)
      puts "=> Fetching labels"
      @client.labels(repository).map do |label|
        Label.from_github_label(label)
      end
    end

    def update(labels, repository)
      old_labels = @client.labels(repository)
      puts "=> Deleting existing labels"
      old_labels.each { |label|
        puts "==> Deleting label #{label[:name]}"
        @client.delete_label!(repository, label[:name])
      }
      labels.each do |label|
        puts "==> Creating label #{label.name}"
        @client.add_label(repository, label.name, label.color)
      end
    end

  end
end