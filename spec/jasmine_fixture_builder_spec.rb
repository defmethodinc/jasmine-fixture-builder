require 'spec_helper'

describe JasmineFixtureBuilder do
  it { expect(JasmineFixtureBuilder.root).to be_kind_of Pathname }
  it 'has a version number' do
    expect(JasmineFixtureBuilder::VERSION).not_to be nil
  end
end

