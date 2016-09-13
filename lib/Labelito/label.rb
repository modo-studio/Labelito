module Labelito
  class Label

    def initialize(name, color)
      @name = name
      @color = color
    end

    def self.from_github_label(label)
      Label.new label[:name], label[:color]
    end

  end
end