# Pig Latin API - PHP Package

Pig Latin translates English text into Pig Latin while preserving designated words from transformation. Pass any sentence along with an optional exclusion list to receive the encoded phrase and confirmed skipped terms.

## Installation

Install via Composer:

```bash
composer require apiverve/piglatin
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Piglatin\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'text' => 'The square wooden crate was packed to be shipped. To have is better than to wait and hope.',
    'exclusions' => crate,hope
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Piglatin\Client;
use APIVerve\Piglatin\Exceptions\APIException;
use APIVerve\Piglatin\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'The square wooden crate was packed to be shipped. To have is better than to wait and hope.', 'exclusions' => crate,hope]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/piglatin?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/piglatin?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/piglatin?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
