module Labelito
  class Label

    attr_reader :name, :color

    def initialize(name, color)
      @name = name
      @color = color
    end

    def self.from_github_label(label)
      return Label.new label[:name], label[:color] if label[:name] && label[:color]
    end

  end
end