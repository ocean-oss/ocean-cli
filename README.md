# Ocean CLI

This is a development version of Ocean CLI based on shell scripts. It uses an official beta API.

## Install and Configure

To install Ocean CLI:

```shell
git clone git@github.com:ocean-oss/ocean-cli.git
cd ocean-cli
chmod -R 700 .
```

Now, configure the CLI to your liking:

```shell
export OCEAN_ACCESS_TOKEN=your_token
alias ocean="path_to_ocean/ocean-cli/ocean"
```

To update the CLI:

```shell
cd ocean-cli
git pull origin master
chmod -R 700 .
```

## Getting Started

First, create an app on Ocean:

```shell
mkdir app_name
cd app_name
ocean apps:create app_name true
```

Then, clone an existing app into the current directory with git or build everything from scratch:

```shell
git clone git@github.com:ocean-oss/base-app.git .
```

Now, you can start working on your app. After modifying app YAML, it's a good idea to validate it before updating the app:

```shell
ocean apps:validate app_name
```

Once you are ready to push your changes, commit them to git and then update your app on Ocean:

```shell
git add .
git commit -m "Adding new changes"
ocean apps:update app_id
```

## Settings

### `OCEAN_URL` (optional)

Use this variable to setup a custom proxy for the Ocean API. Useful for development or if you are behind a firewall.

### `OCEAN_ACCESS_TOKEN` (required)

Set this variable to your Ocean access token. Obtain a new token from https://cloud.ocean.dev/access_tokens

## All Commands

### `ocean apps:create app_name is_public`

Create a new app on Ocean with a specific name and public/private property.

### `ocean apps:update app_name`

Update an existing app with an `app_name`. Don't forget to commit your changes to git first.

### `ocean apps:delete app_name`

Delete an existing app with an `app_name`.

### `ocean apps:show app_name`

Show app metadata response from the API.

### `ocean apps:download app_name`

Downloads a zip file with the app contents and unzips it in the current directory. This is one way to "fork" an existing app.

### `ocean apps:validate app_name`

Validate app YAML without updating the app on Ocean.