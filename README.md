# Ocean CLI

This is a development version of the CLI based on shell scripts.

## Setup

```shell
https://github.com/ocean-oss/ocean-cli.git
cd ocean-cli
chmod -R 700 .
```

## Environment Variables

### OCEAN_URL (optional)

If you need a proxy to Ocean set this variables.

### OCEAN_ACCESS_TOKEN (required)

Set this variable to your access token from Ocean.

## Commands

### `ocean apps:yaml app_id`

Download app YAML with a specific app ID. To download it into a file run:

```shell
ocean apps:yaml app_id > my_app.yaml
```

### `ocean apps:validate path_to_app_yaml`

Validate YAML against the API.
