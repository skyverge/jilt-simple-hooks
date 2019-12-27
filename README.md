# Jilt Simple Hooks

A simple Sinatra server mimicking webhooks responses of external platforms, e.g. Zapier.

## Development

Clone the code and run the app via:

```
ruby zapier.rb
```

This will start a Sinatra app at `localhost:4567`

## Supported webhooks

#### `POST hook`

If a param `error` is provided, it returns that error, e.g.

```
curl -I -X 'POST' 'http://localhost:4567/hook?error=500'

HTTP/1.1 500 Internal Server Error
Content-Type: application/json
Content-Length: 0
X-Content-Type-Options: nosniff
Connection: keep-alive
Server: thin
```

Otherwise it returns the params as JSON:

```
curl -X 'POST' 'http://localhost:4567/hook?a=b'

{"a":"b"}
```
