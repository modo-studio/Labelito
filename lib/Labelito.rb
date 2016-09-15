require_relative "Labelito/version"
require_relative "Labelito/template_reader"
require_relative "Labelito/errors"
require_relative "Labelito/tool"
require "thor"

module Labelito

  # http://whatisthor.com/
  class CommandTool < Thor

    option :github_token, :required => false, :type => :string
    desc "clone FROM_OWNER/FROM_REPO TO_OWNER/TO_REPO", "clone the labels from an existing repository"
    def clone(from_repo, to_repo)
      token = options[:github_token]
      token ||= ENV["LABELITO_GITHUB_TOKEN"]
      if token == nil
        puts("You should pass a token or define it as a environment variable, LABELITO_GITHUB_TOKEN")
        exit -1
      end
      tool = Labelito::Tool.with_token(token)
      tool.clone(from_repo, to_repo)
    end

    option :github_token, :required => false, :type => :string
    desc "create TEMPLATE_PATH REPO_OWNER/REPO", "create labels on a repository based on a template"
    def create(template_path, repo)
      token = options[:github_token]
      token ||= ENV["LABELITO_GITHUB_TOKEN"]
      if token == nil
        puts("You should pass a token or define it as a environment variable, LABELITO_GITHUB_TOKEN")
        exit -1
      end
      tool = Labelito::Tool.with_token(token)
      tool.create(template_path, repo)
    end

  end

end

Labelito::CommandTool.start(ARGV)