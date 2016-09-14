require_relative "github_client"
require_relative "template_reader"
require "thor"

module Labelito
  class Tool

    def initialize(client, template_reader)
      @client = client
      @template_reader = template_reader
    end

    def self.with_token(token)
      Tool.new GithubClient.new(token), TemplateReader.new
    end

    def clone(from_repo, to_repo)
      labels = @client.labels(from_repo)
      @client.update(labels, to_repo)
    end

    def create(template_path, repo)
      labels = @template_reader.read(template_path)
      @client.update(labels, repo)
    end

  end
end