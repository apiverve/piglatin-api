# Pig Latin API - Ruby Gem

Pig Latin translates English text into Pig Latin while preserving designated words from transformation. Pass any sentence along with an optional exclusion list to receive the encoded phrase and confirmed skipped terms.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_piglatin'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_piglatin
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_piglatin'

# Initialize the client
client = APIVerve::Piglatin::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  text: "The square wooden crate was packed to be shipped. To have is better than to wait and hope.",
  exclusions: crate,hope
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "The square wooden crate was packed to be shipped. To have is better than to wait and hope.", exclusions: crate,hope })
  puts response["data"]
rescue APIVerve::Piglatin::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Piglatin::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Piglatin::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "text": "Ethay uaresqay oodenway crate asway ackedpay otay ebay ippedshay. Otay avehay isyay etterbay anthay otay aitway andyay hope.",
    "exclusions": [
      "crate",
      "hope"
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/piglatin?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/piglatin?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/piglatin?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
