# Sprockets::Glob

adds `require_glob` and `stub_glob` directives to Sprockets

## Installation

```rb
gem 'sprockets-glob'
```

## Usage

First you need to register the `Sprockets::Glob::DirectiveProcessor` with the correct MIME types.
Then you can use it in your normal Sprockets pipeline. Here's an example using javascript:

```rb
# config/initializers/sprockets.rb
require 'sprockets-glob'
Rails.application.assets.register_processor('application/javascript', Sprockets::Glob::DirectiveProcessor)

# application.js
//= require_glob app/features/**/*.js
//= stub_glob app/features/**/*test.js
```