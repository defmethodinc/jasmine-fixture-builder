require 'spec_helper'

describe JasmineFixtureBuilder::PathInstaller do
  describe ".install" do
    let(:root_dir) { Pathname.new("/path/to/rails/root") }
    let(:fixtures_dir) { ("/spec/javascripts/fixtures") }
    let(:fixture_builders_dir) { ("/spec/javascripts/fixture_builders") }
    let(:fixtures_pathname) { Pathname.new("#{root_dir}#{fixtures_dir}") }
    let(:fixture_builders_pathname) { Pathname.new("#{root_dir}#{fixture_builders_dir}") }

    subject { described_class.install(root_dir) }

    context "when install directories do no exist" do
      before do
        allow(Dir).to receive(:exists?).at_least(:twice) { false }
        expect(FileUtils).to receive(:mkdir_p).with(fixtures_pathname)
        expect(FileUtils).to receive(:mkdir_p).with(fixture_builders_pathname)
        expect(File).to receive(:new).with("#{root_dir}#{fixtures_dir}/.keep", "w")
        expect(File).to receive(:new).with("#{root_dir}#{fixture_builders_dir}/.keep", "w")
      end

      it { is_expected.to be }
    end

    context "when install directories exist" do
      before do
        allow(Dir).to receive(:exists?) { true }
        expect(FileUtils).to receive(:mkdir_p).never
        expect(File).to receive(:new).never
      end

      it { is_expected.to be }
    end
  end
end

