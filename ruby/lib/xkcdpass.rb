require "xkcdpass/version"

module Xkcdpass
  class Generator
    def initialize(adjectives:, nouns:, adverbs:, verbs:)
      @adjectives = adjectives
      @nouns = nouns
    end

    def adjective
      @adjectives[rand(@adjectives.size)]
    end

    def noun
      @nouns[rand(@nouns.size)]
    end

    def generate
      [adjective, nil, nil, nil].join('-')
    end
  end
end
