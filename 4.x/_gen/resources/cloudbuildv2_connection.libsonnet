local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_cloudbuildv2_connection', url='', help='`google_cloudbuildv2_connection` represents the `google-beta_google_cloudbuildv2_connection` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  github_config:: {
    authorizer_credential:: {
      '#new':: d.fn(help='\n`google-beta.google_cloudbuildv2_connection.github_config.authorizer_credential.new` constructs a new object with attributes and blocks configured for the `authorizer_credential`\nTerraform sub block.\n\n\n\n**Args**:\n  - `oauth_token_secret_version` (`string`): A SecretManager resource containing the OAuth token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`. When `null`, the `oauth_token_secret_version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `authorizer_credential` sub block.\n', args=[]),
      new(
        oauth_token_secret_version=null
      ):: std.prune(a={
        oauth_token_secret_version: oauth_token_secret_version,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_cloudbuildv2_connection.github_config.new` constructs a new object with attributes and blocks configured for the `github_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `app_installation_id` (`number`): GitHub App installation id. When `null`, the `app_installation_id` field will be omitted from the resulting object.\n  - `authorizer_credential` (`list[obj]`): OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App. When `null`, the `authorizer_credential` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloudbuildv2_connection.github_config.authorizer_credential.new](#fn-github_configauthorizer_credentialnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `github_config` sub block.\n', args=[]),
    new(
      app_installation_id=null,
      authorizer_credential=null
    ):: std.prune(a={
      app_installation_id: app_installation_id,
      authorizer_credential: authorizer_credential,
    }),
  },
  github_enterprise_config:: {
    '#new':: d.fn(help='\n`google-beta.google_cloudbuildv2_connection.github_enterprise_config.new` constructs a new object with attributes and blocks configured for the `github_enterprise_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `app_id` (`number`): Id of the GitHub App created from the manifest. When `null`, the `app_id` field will be omitted from the resulting object.\n  - `app_installation_id` (`number`): ID of the installation of the GitHub App. When `null`, the `app_installation_id` field will be omitted from the resulting object.\n  - `app_slug` (`string`): The URL-friendly name of the GitHub App. When `null`, the `app_slug` field will be omitted from the resulting object.\n  - `host_uri` (`string`): Required. The URI of the GitHub Enterprise host this connection is for.\n  - `private_key_secret_version` (`string`): SecretManager resource containing the private key of the GitHub App, formatted as `projects/*/secrets/*/versions/*`. When `null`, the `private_key_secret_version` field will be omitted from the resulting object.\n  - `ssl_ca` (`string`): SSL certificate to use for requests to GitHub Enterprise. When `null`, the `ssl_ca` field will be omitted from the resulting object.\n  - `webhook_secret_secret_version` (`string`): SecretManager resource containing the webhook secret of the GitHub App, formatted as `projects/*/secrets/*/versions/*`. When `null`, the `webhook_secret_secret_version` field will be omitted from the resulting object.\n  - `service_directory_config` (`list[obj]`): Configuration for using Service Directory to privately connect to a GitHub Enterprise server. This should only be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitHub Enterprise server will be made over the public internet. When `null`, the `service_directory_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloudbuildv2_connection.github_enterprise_config.service_directory_config.new](#fn-github_enterprise_configservice_directory_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `github_enterprise_config` sub block.\n', args=[]),
    new(
      host_uri,
      app_id=null,
      app_installation_id=null,
      app_slug=null,
      private_key_secret_version=null,
      service_directory_config=null,
      ssl_ca=null,
      webhook_secret_secret_version=null
    ):: std.prune(a={
      app_id: app_id,
      app_installation_id: app_installation_id,
      app_slug: app_slug,
      host_uri: host_uri,
      private_key_secret_version: private_key_secret_version,
      service_directory_config: service_directory_config,
      ssl_ca: ssl_ca,
      webhook_secret_secret_version: webhook_secret_secret_version,
    }),
    service_directory_config:: {
      '#new':: d.fn(help='\n`google-beta.google_cloudbuildv2_connection.github_enterprise_config.service_directory_config.new` constructs a new object with attributes and blocks configured for the `service_directory_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service` (`string`): Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.\n\n**Returns**:\n  - An attribute object that represents the `service_directory_config` sub block.\n', args=[]),
      new(
        service
      ):: std.prune(a={
        service: service,
      }),
    },
  },
  '#new':: d.fn(help="\n`google-beta.google_cloudbuildv2_connection.new` injects a new `google-beta_google_cloudbuildv2_connection` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_cloudbuildv2_connection.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_cloudbuildv2_connection` using the reference:\n\n    $._ref.google-beta_google_cloudbuildv2_connection.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_cloudbuildv2_connection.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Allows clients to store small amounts of arbitrary data. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `disabled` (`bool`): If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Immutable. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{connection_id}`.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `github_config` (`list[obj]`): Configuration for connections to github.com. When `null`, the `github_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloudbuildv2_connection.github_config.new](#fn-github_confignew) constructor.\n  - `github_enterprise_config` (`list[obj]`): Configuration for connections to an instance of GitHub Enterprise. When `null`, the `github_enterprise_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloudbuildv2_connection.github_enterprise_config.new](#fn-github_enterprise_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloudbuildv2_connection.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    annotations=null,
    disabled=null,
    github_config=null,
    github_enterprise_config=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudbuildv2_connection',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      disabled=disabled,
      github_config=github_config,
      github_enterprise_config=github_enterprise_config,
      location=location,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_cloudbuildv2_connection.newAttrs` constructs a new object with attributes and blocks configured for the `google_cloudbuildv2_connection`\nTerraform resource.\n\nUnlike [google-beta.google_cloudbuildv2_connection.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Allows clients to store small amounts of arbitrary data. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `disabled` (`bool`): If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Immutable. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{connection_id}`.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `github_config` (`list[obj]`): Configuration for connections to github.com. When `null`, the `github_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloudbuildv2_connection.github_config.new](#fn-github_confignew) constructor.\n  - `github_enterprise_config` (`list[obj]`): Configuration for connections to an instance of GitHub Enterprise. When `null`, the `github_enterprise_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloudbuildv2_connection.github_enterprise_config.new](#fn-github_enterprise_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloudbuildv2_connection.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_cloudbuildv2_connection` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    annotations=null,
    disabled=null,
    github_config=null,
    github_enterprise_config=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    disabled: disabled,
    github_config: github_config,
    github_enterprise_config: github_enterprise_config,
    location: location,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_cloudbuildv2_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withAnnotations':: d.fn(help='`google-beta.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_connection+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withDisabled':: d.fn(help='`google-beta.bool.withDisabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_connection+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withGithubConfig':: d.fn(help='`google-beta.list[obj].withGithubConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the github_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withGithubConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `github_config` field.\n', args=[]),
  withGithubConfig(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_connection+: {
        [resourceLabel]+: {
          github_config: value,
        },
      },
    },
  },
  '#withGithubConfigMixin':: d.fn(help='`google-beta.list[obj].withGithubConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the github_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withGithubConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `github_config` field.\n', args=[]),
  withGithubConfigMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_connection+: {
        [resourceLabel]+: {
          github_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withGithubEnterpriseConfig':: d.fn(help='`google-beta.list[obj].withGithubEnterpriseConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the github_enterprise_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withGithubEnterpriseConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `github_enterprise_config` field.\n', args=[]),
  withGithubEnterpriseConfig(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_connection+: {
        [resourceLabel]+: {
          github_enterprise_config: value,
        },
      },
    },
  },
  '#withGithubEnterpriseConfigMixin':: d.fn(help='`google-beta.list[obj].withGithubEnterpriseConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the github_enterprise_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withGithubEnterpriseConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `github_enterprise_config` field.\n', args=[]),
  withGithubEnterpriseConfigMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_connection+: {
        [resourceLabel]+: {
          github_enterprise_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_connection+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_connection+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_connection+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_connection+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_connection+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
