require_relative "Labelito/version"
require_relative "Labelito/template_reader"
require_relative "Labelito/errors"
require_relative "Labelito/tool"
require "thor"

module Labelito

  # http://whatisthor.com/
  class CommandTool < Thor

    desc "clone FROM_OWNER/FROM_REPO TO_OWNER/TO_REPO", "clone the labels from an existing repository"
    def clone(from_repo, to_repo)
      tool = Labelito::Tool.with_token(token)
      tool.clone(from_repo, to_repo)
    end

    desc "create TEMPLATE_PATH REPO_OWNER/REPO", "create labels on a repository based on a template"
    def create(template_path, repo)
      tool = Labelito::Tool.with_token(token)
      tool.create(template_path, repo)
    end

  end

end

Labelito::CommandTool.start(ARGV)