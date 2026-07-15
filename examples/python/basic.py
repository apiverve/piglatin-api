"""
Pig Latin API - Basic Usage Example

This example demonstrates the basic usage of the Pig Latin API.
API Documentation: https://docs.apiverve.com/ref/piglatin
"""

import os
import requests
import json

API_KEY = os.getenv('APIVERVE_API_KEY', 'YOUR_API_KEY_HERE')
API_URL = 'https://api.apiverve.com/v1/piglatin'

def call_piglatin_api():
    """
    Make a POST request to the Pig Latin API
    """
    try:
        # Request body
        request_body &#x3D; {
    &#x27;text&#x27;: &#x27;The square wooden crate was packed to be shipped. To have is better than to wait and hope.&#x27;,
    &#x27;exclusions&#x27;: [
        &#x27;crate&#x27;,
        &#x27;hope&#x27;
    ]
}

        headers = {
            'x-api-key': API_KEY,
            'Content-Type': 'application/json'
        }

        response = requests.post(API_URL, headers=headers, json=request_body)

        # Raise exception for HTTP errors
        response.raise_for_status()

        data = response.json()

        # Check API response status
        if data.get('status') == 'ok':
            print('✓ Success!')
            print('Response data:', json.dumps(data['data'], indent=2))
            return data['data']
        else:
            print('✗ API Error:', data.get('error', 'Unknown error'))
            return None

    except requests.exceptions.RequestException as e:
        print(f'✗ Request failed: {e}')
        return None

if __name__ == '__main__':
    print('📤 Calling Pig Latin API...\n')

    result = call_piglatin_api()

    if result:
        print('\n📊 Final Result:')
        print(json.dumps(result, indent=2))
    else:
        print('\n✗ API call failed')
