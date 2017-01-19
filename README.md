[![Build Status](https://travis-ci.org/defmethodinc/jasmine-fixture-builder.svg?branch=master)](https://travis-ci.org/defmethodinc/jasmine-fixture-builder)
[![Code Climate](https://codeclimate.com/github/defmethodinc/jasmine-fixture-builder/badges/gpa.svg)](https://codeclimate.com/github/defmethodinc/jasmine-fixture-builder)
[![Test Coverage](https://codeclimate.com/github/defmethodinc/jasmine-fixture-builder/badges/coverage.svg)](https://codeclimate.com/github/defmethodinc/jasmine-fixture-builder/coverage)
# Jasmine Fixture Builder

Jasmine Fixture Builder (or "JazzFix" for short) allows you to generate fixtures for your jasmine specs based on the DOM your application renders. Don't let your jasmine fixtures get stale and lie to you - use JazzFix to keep your application's DOM and jasmine specs in sync!

## Dependencies

JazzFix works alongside the use of the following:
- rails
- jquery
- rspec-rails
- jasmine
- jasmine-jquery

JazzFix leverages the fixture loading ability of [jasmine-jquery](https://github.com/velesin/jasmine-jquery) along with the clean DOM rendering that [rspec-rails](https://github.com/rspec/rspec-rails) [view specs](https://github.com/rspec/rspec-rails#view-specs) provide. JazzFix owes a debt of gratitude to the work and subsequent [experience report](http://pivotallabs.com/javascriptspecs-bind-reality/) from JB Steadman.

## Installation

Add the following gems to application's gem file, grouped to development/test:
 - jasmine
 - jasmine-jquery-rails
 - jasmine_fixture_builder

(rspec-rails is a dependency of jasmine_fixture_builder, so there is no need to explicitly add it to your gem file as a dependency)

Run the following:
- `bundle install`
- `rails generate rspec:install`
- `rails generate jasmine:install`

Add `assets/jasmine-jquery.js` underneath the `src_files` item in your jasmine.yml, which should live in the spec/javascripts/support directory.

## Usage

###Create a fixture with RSpec:

Create a [view spec](https://www.relishapp.com/rspec/rspec-rails/v/3-5/docs/view-specs/view-spec) for a particular view you want to create a fixture from. Render the view, then save the rendered html to a fixture with the provided `save_fixture` method:

```
describe 'widgets/index' do
	it 'creates fixture' do
		render
		save_fixture(rendered, 'widgets_index.html')
	end
end
```
`save_fixture` takes 2 arguments: the markup as its first, the name to ascribe the fixture to as its second.

This saves the markup from the view into a file living at `spec/javascripts/fixtures/widgets_index.html`.

###Use that fixture in your Jasmine test:

Utilize the `loadFixture` method from jasmine-jquery to load up the fixture for use in your test.  `loadFixture` inserts the markup from your fixture into a container `<div id='jasmine-fixtures'></div>`.

```
describe('widgets/index', function() {
	it('tests javascript action', function() {
		//load the fixture
		loadFixture('widgets_index.html');

		// test some javascript action
		$('#jasmine-fixtures .some-button').click();

		// make an assertion
		$('#jasmine-fixtures .some-container').toHaveText('text');
	});
});
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/jasmine_fixture_builder/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
