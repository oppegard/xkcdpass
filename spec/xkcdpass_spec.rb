require 'spec_helper'
require 'xkcdpass'

RSpec.describe Xkcdpass::Generator do
  subject { Xkcdpass::Generator.new(adjectives: adjectives, nouns: nouns, adverbs: [], verbs: []) }
  let(:adjectives) { %w(fuzzy sticky warm) }
  let(:nouns) { %w(canine kitten finger) }
  let(:words) { %w(abc def ghi jkl mno pqr stu vwx yx) }

  it 'selects four random words' do
    expect(subject.generate).to be_a String
    expect(subject.generate).to_not eq words[0...4].join('-')
  end

  it "selects a random adjective" do
    expect(adjectives).to include(subject.adjective)
  end

  it "selects a random noun" do
    expect(nouns).to include(subject.noun)
  end


end
