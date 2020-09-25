# Ocean CLI

This is a development version of Ocean CLI based on shell scripts. It uses an official beta API.

## Install and Setup

To install Ocean CLI:

```shell
git clone git@github.com:ocean-oss/ocean-cli.git
cd ocean-cli
chmod -R 700 .
```

Now, configure the CLI to your liking:

```shell
export OCEAN_ACCESS_TOKEN=<your_token>
alias ocean="<path_to_ocean>/ocean-cli/ocean"
```

## Environment Variables

### `OCEAN_URL` (optional)

Use this variable to setup a custom proxy for the Ocean API. Useful for development or if you are behind a firewall.

### `OCEAN_ACCESS_TOKEN` (required)

Set this variable to your Ocean access token. Obtain a new token from https://cloud.ocean.dev/access_tokens

## Commands

### `ocean apps:init`

Create a new app in the current directory. This command initializes a git repository and pulls content from https://github.com/ocean-oss/base-app.

### `ocean apps:show`

Show app metadata response from the API.

### `ocean apps:yaml app_id`

Download YAML for a specific Ocean app that you have access to. To download it into a file run:

```shell
ocean apps:yaml app_id > my_app.yaml
```

### `ocean apps:validate`

Validate YAML in the current against the API. Provide a path to the YAML file via an optional argument.
