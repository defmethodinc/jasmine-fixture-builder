require 'spec_helper'

describe JasmineFixtureBuilder::FixtureWriter do

  describe "#write" do
    let(:markup) { "<some>Markup</some>" }
    let(:fixture_writer) { described_class.new(markup, "subdir/some_markup.html") }
    let(:fixture_name) { JasmineFixtureBuilder.root.join("spec", "javascripts", "fixtures", "subdir", "some_markup.html") }

    before do
      allow(Rails).to receive(:root).and_return(JasmineFixtureBuilder.root)
      FileUtils.rm_rf(JasmineFixtureBuilder.root.join("spec", "javascripts"))
    end

    subject(:writer) { -> { fixture_writer.write } }

    it { is_expected.to change { File.read(fixture_name) rescue nil }.to("#{markup}\n") }
  end
end

