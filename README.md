# Kong Upstream Plugin

This is a Kong plugin that changes the upstream target for the current request.

## Development

Start docker compose to run Kong mounting the plugin directory:

```bash
docker compose up
```

There is an utility script to configure a service with a route using the plugin:

```bash
./scripts/add.sh
```

## Testing

The service is misconfigured to an non-existing URL. A good upstream with a valid target has been set. The plugin should change the target to the good upstream.

```bash
curl localhost:8000/cep/22081040/json
```
