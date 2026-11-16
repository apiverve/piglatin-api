# Pig Latin API - Dart/Flutter Client

Pig Latin translates English text into Pig Latin while preserving designated words from transformation. Pass any sentence along with an optional exclusion list to receive the encoded phrase and confirmed skipped terms.

[![pub package](https://img.shields.io/pub/v/apiverve_piglatin.svg)](https://pub.dev/packages/apiverve_piglatin)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Pig Latin API](https://apiverve.com/marketplace/piglatin?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_piglatin: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_piglatin/apiverve_piglatin.dart';

void main() async {
  final client = PiglatinClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'The square wooden crate was packed to be shipped. To have is better than to wait and hope.',
      'exclusions': crate,hope
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Pig Latin API](https://apiverve.com/marketplace/piglatin?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/piglatin](https://docs.apiverve.com/ref/piglatin?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
