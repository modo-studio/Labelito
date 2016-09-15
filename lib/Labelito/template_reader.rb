require 'yaml'
require_relative 'label'
require_relative 'errors'

module Labelito
  class TemplateReader

    def read(path)
      raise Errors::TemplateNotFound unless File.exists?(path)
      puts "=> Fetching labels"
      YAML::load_file(path).map do |element|
        raise Errors::InvalidFormat unless element["name"] && element["color"]
        Label.new element["name"], element["color"]
      end
    end

  end
end