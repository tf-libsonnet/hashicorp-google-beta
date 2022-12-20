<h1 align="center">tf-libsonnet/hashicorp-google-beta</h1>

<p align="center">
  <em>Generate Terraform with Jsonnet</em>
</p>

<p align="center">
  <a href="https://github.com/tf-libsonnet/hashicorp-google-beta/blob/main/LICENSE">
    <img alt="LICENSE" src="https://img.shields.io/github/license/tf-libsonnet/hashicorp-google-beta?style=for-the-badge">
  </a>
  <a href="https://github.com/tf-libsonnet/hashicorp-google-beta/releases/latest">
    <img alt="latest release" src="https://img.shields.io/github/v/release/tf-libsonnet/hashicorp-google-beta?style=for-the-badge">
  </a>
</p>

This repository contains [Jsonnet](https://jsonnet.org/) functions for generating resources and data sources for the
[hashicorp/google-beta](https://registry.terraform.io/providers/hashicorp/google-beta) Terraform provider.

> **IMPORTANT**
>
> This library is generated using [tf-libsonnet/libgenerator](https://github.com/tf-libsonnet/libgenerator). If you find
> an issue with the generated code, please file an issue in the `libgenerator` repository.
>
> If you would like to contribute a change, you may open a Pull Request with a suggested change, but please note that it
> will **not be merged in until the necessary updates have been made to the generator**.

## Usage

Install the package using [jsonnet-bundler](https://github.com/jsonnet-bundler/jsonnet-bundler):

```
# google-beta requires google library for provider generation.
jb install github.com/tf-libsonnet/hashicorp-google@main
jb install github.com/tf-libsonnet/hashicorp-google-beta@main

# Or if you want to install a specific release
#   jb install github.com/tf-libsonnet/hashicorp-google-beta@v0.0.1
# Or if you want to install bindings for a specific provider major version series
#   jb install github.com/tf-libsonnet/hashicorp-google-beta/4.x@main
```

You can then import the package in your Jsonnet code:

```jsonnet
// main.tf.json.jsonnet
local google_beta = import 'github.com/tf-libsonnet/hashicorp-google-beta/main.libsonnet';
local google = import 'github.com/tf-libsonnet/hashicorp-google/main.libsonnet';

google.provider.new(region='us-central1', src='hashicorp/google-beta')
+ google_beta.google_service_account.new(
  'default',
  account_id='service_account_id',
  display_name='Service Account',
)
```

This will generate the following Terraform JSON :

```json
{
   "provider": {
      "google": [
         {
            "region": "us-central1"
         }
      ]
   },
   "resource": {
      "google_service_account": {
         "default": {
            "account_id": "service_account_id",
            "display_name": "Service Account"
         }
      }
   },
   "terraform": {
      "required_providers": {
         "google": {
            "source": "hashicorp/google-beta"
         }
      }
   }
}
```

Refer to the [reference docs](/docs/4.x/README.md) for a list of supported data sources and resources:

- [provider config](/docs/4.x/provider.md)
- [resources](/docs/4.x/README.md)
- [data sources](/docs/4.x/data/index.md)


## Support

If you have any questions about how to use the `tf.libsonnet` libraries, ask in the [Organization GitHub
Discussion](https://github.com/orgs/tf-libsonnet/discussions).


## Contributing

Refer to the [CONTRIBUTING.md](/CONTRIBUTING.md) document for information on how to contribute to `tf.libsonnet`.
