require 'spec_helper'

describe JasmineFixtureBuilder::FixtureWriter do

  describe "#write" do
    let(:markup) { "<some>Markup</some>" }
    let(:fixture_name) { "some_markup.html" }
    let(:fixture_writer) { described_class.new(markup, fixture_name) }
    let(:rails_root) { "/path/to/rails/root" }
    let(:fixture_path) { Pathname.new(rails_root + "/" + JasmineFixtureBuilder::JAZZ_FIX_PATHS[:fixture_path] + "/" + fixture_name) }
    let(:file) { double("a file") }

    before do
      allow(Rails).to receive(:root) { Pathname.new(rails_root) }

      expect(File).to receive(:open).with(fixture_path.to_s, "w").and_yield(file)
      expect(file).to receive(:puts).with(markup)
    end

    subject { fixture_writer.write }

    it { is_expected.to be_nil }
  end
end

