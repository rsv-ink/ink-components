source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in ink-components.gemspec.
gemspec

gem "puma"

gem "sqlite3", "1.7.3"

gem "sprockets-rails"

# A handy gem for rendering SVG icons [https://github.com/getrailsui/railsui_icon]
gem "railsui_icon", git: "git@github.com:karinevieira/railsui_icon.git", branch: "poc/flowbite_icons"

# Building reusable, testable & encapsulated view components [https://github.com/viewcomponent/view_component]
gem "view_component", "2.82.0"

# Bundle and process CSS in Rails with Tailwind, PostCSS, and Sass via Node.js [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails", "1.1.2"

# Bundle and transpile JavaScript in Rails with esbuild, rollup.js, or Webpack [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails", "1.1.1"

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"

group :development do
  # Omakase Ruby styling for Rails [https://github.com/rails/rubocop-rails-omakase]
  gem "rubocop-rails-omakase", "1.0.0"
end
