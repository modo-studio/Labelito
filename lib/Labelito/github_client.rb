require 'octokit'

module Labelito
  class GithubClient

    def initialize(token)
      @client = Octokit::Client.new(:access_token => token)
    end

    def self.with_octokit_client(client)
      @client = client
    end

    def labels(repository)
      # TODO
    end

    def update(labels, repository)
      # TODO
    end

  end
end