module Labelito
  class Tool

    def initialize(client)
      @client = client
    end

    def self.with_github_token(token)
      Labelito::Tool.new token
    end

    def execute(arguments)
      # TODO
    end

  end
end