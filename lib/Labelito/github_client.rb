require 'octokit'

module Labelito
  class GithubClient

    def initialize(token = "ad6e42645b1d2f384edcad3c104f93ab21f10fd1")
      @client = Octokit::Client.new(:access_token => token)
    end

    def labels(repository)
      # TODO
    end

    def update(labels, repository)
      # TODO
    end

  end
end