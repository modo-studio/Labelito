require_relative "Labelito/version"
require_relative "Labelito/template_reader"
require_relative "Labelito/errors"
require "thor"

# module Labelito
#
#   # http://whatisthor.com/
#   class CommandTool < Thor
#
#     desc "clone FROM_OWNER/FROM_REPO TO_OWNER/TO_REPO", "clone the labels from an existing repository"
#     def clone(from, to)
#
#     end
#
#     desc "list [SEARCH]", "list all of the available apps, limited by SEARCH"
#     def list(search="")
#       # list everything
#     end
#
#   end
#
# end
#
# Labelito::CommandTool.start(ARGV)