local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_dataform_repository', url='', help='`google_dataform_repository` represents the `google-beta_google_dataform_repository` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  git_remote_settings:: {
    '#new':: d.fn(help='\n`google-beta.google_dataform_repository.git_remote_settings.new` constructs a new object with attributes and blocks configured for the `git_remote_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `authentication_token_secret_version` (`string`): The name of the Secret Manager secret version to use as an authentication token for Git operations. This secret is for assigning with HTTPS only(for SSH use &#39;ssh_authentication_config&#39;). Must be in the format projects/*/secrets/*/versions/*. When `null`, the `authentication_token_secret_version` field will be omitted from the resulting object.\n  - `default_branch` (`string`): The Git remote&#39;s default branch name.\n  - `url` (`string`): The Git remote&#39;s URL.\n  - `ssh_authentication_config` (`list[obj]`): Authentication fields for remote uris using SSH protocol. When `null`, the `ssh_authentication_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.git_remote_settings.ssh_authentication_config.new](#fn-git_remote_settingsssh_authentication_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `git_remote_settings` sub block.\n', args=[]),
    new(
      default_branch,
      url,
      authentication_token_secret_version=null,
      ssh_authentication_config=null
    ):: std.prune(a={
      authentication_token_secret_version: authentication_token_secret_version,
      default_branch: default_branch,
      ssh_authentication_config: ssh_authentication_config,
      url: url,
    }),
    ssh_authentication_config:: {
      '#new':: d.fn(help='\n`google-beta.google_dataform_repository.git_remote_settings.ssh_authentication_config.new` constructs a new object with attributes and blocks configured for the `ssh_authentication_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_public_key` (`string`): Content of a public SSH key to verify an identity of a remote Git host.\n  - `user_private_key_secret_version` (`string`): The name of the Secret Manager secret version to use as a ssh private key for Git operations. Must be in the format projects/*/secrets/*/versions/*.\n\n**Returns**:\n  - An attribute object that represents the `ssh_authentication_config` sub block.\n', args=[]),
      new(
        host_public_key,
        user_private_key_secret_version
      ):: std.prune(a={
        host_public_key: host_public_key,
        user_private_key_secret_version: user_private_key_secret_version,
      }),
    },
  },
  '#new':: d.fn(help="\n`google-beta.google_dataform_repository.new` injects a new `google-beta_google_dataform_repository` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_dataform_repository.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_dataform_repository` using the reference:\n\n    $._ref.google-beta_google_dataform_repository.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_dataform_repository.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): Optional. The repository\u0026#39;s user-friendly name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. Repository user labels.\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs. Example: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The repository\u0026#39;s name.\n  - `npmrc_environment_variables_secret_version` (`string`): Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format projects/*/secrets/*/versions/*. The file itself must be in a JSON format. When `null`, the `npmrc_environment_variables_secret_version` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.\n  - `service_account` (`string`): The service account to run workflow invocations under. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `git_remote_settings` (`list[obj]`): Optional. If set, configures this repository to be linked to a Git remote. When `null`, the `git_remote_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.git_remote_settings.new](#fn-git_remote_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.timeouts.new](#fn-timeoutsnew) constructor.\n  - `workspace_compilation_overrides` (`list[obj]`): If set, fields of workspaceCompilationOverrides override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. When `null`, the `workspace_compilation_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.workspace_compilation_overrides.new](#fn-workspace_compilation_overridesnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    display_name=null,
    git_remote_settings=null,
    labels=null,
    npmrc_environment_variables_secret_version=null,
    project=null,
    region=null,
    service_account=null,
    timeouts=null,
    workspace_compilation_overrides=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataform_repository',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      git_remote_settings=git_remote_settings,
      labels=labels,
      name=name,
      npmrc_environment_variables_secret_version=npmrc_environment_variables_secret_version,
      project=project,
      region=region,
      service_account=service_account,
      timeouts=timeouts,
      workspace_compilation_overrides=workspace_compilation_overrides
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_dataform_repository.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataform_repository`\nTerraform resource.\n\nUnlike [google-beta.google_dataform_repository.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): Optional. The repository&#39;s user-friendly name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. Repository user labels.\nAn object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The repository&#39;s name.\n  - `npmrc_environment_variables_secret_version` (`string`): Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format projects/*/secrets/*/versions/*. The file itself must be in a JSON format. When `null`, the `npmrc_environment_variables_secret_version` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.\n  - `service_account` (`string`): The service account to run workflow invocations under. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `git_remote_settings` (`list[obj]`): Optional. If set, configures this repository to be linked to a Git remote. When `null`, the `git_remote_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.git_remote_settings.new](#fn-git_remote_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.timeouts.new](#fn-timeoutsnew) constructor.\n  - `workspace_compilation_overrides` (`list[obj]`): If set, fields of workspaceCompilationOverrides override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. When `null`, the `workspace_compilation_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.workspace_compilation_overrides.new](#fn-workspace_compilation_overridesnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataform_repository` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    display_name=null,
    git_remote_settings=null,
    labels=null,
    npmrc_environment_variables_secret_version=null,
    project=null,
    region=null,
    service_account=null,
    timeouts=null,
    workspace_compilation_overrides=null
  ):: std.prune(a={
    display_name: display_name,
    git_remote_settings: git_remote_settings,
    labels: labels,
    name: name,
    npmrc_environment_variables_secret_version: npmrc_environment_variables_secret_version,
    project: project,
    region: region,
    service_account: service_account,
    timeouts: timeouts,
    workspace_compilation_overrides: workspace_compilation_overrides,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_dataform_repository.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDisplayName':: d.fn(help='`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withGitRemoteSettings':: d.fn(help='`google-beta.list[obj].withGitRemoteSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the git_remote_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withGitRemoteSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `git_remote_settings` field.\n', args=[]),
  withGitRemoteSettings(resourceLabel, value): {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          git_remote_settings: value,
        },
      },
    },
  },
  '#withGitRemoteSettingsMixin':: d.fn(help='`google-beta.list[obj].withGitRemoteSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the git_remote_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withGitRemoteSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `git_remote_settings` field.\n', args=[]),
  withGitRemoteSettingsMixin(resourceLabel, value): {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          git_remote_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNpmrcEnvironmentVariablesSecretVersion':: d.fn(help='`google-beta.string.withNpmrcEnvironmentVariablesSecretVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the npmrc_environment_variables_secret_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `npmrc_environment_variables_secret_version` field.\n', args=[]),
  withNpmrcEnvironmentVariablesSecretVersion(resourceLabel, value): {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          npmrc_environment_variables_secret_version: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withServiceAccount':: d.fn(help='`google-beta.string.withServiceAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccount(resourceLabel, value): {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWorkspaceCompilationOverrides':: d.fn(help='`google-beta.list[obj].withWorkspaceCompilationOverrides` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the workspace_compilation_overrides field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withWorkspaceCompilationOverridesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `workspace_compilation_overrides` field.\n', args=[]),
  withWorkspaceCompilationOverrides(resourceLabel, value): {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          workspace_compilation_overrides: value,
        },
      },
    },
  },
  '#withWorkspaceCompilationOverridesMixin':: d.fn(help='`google-beta.list[obj].withWorkspaceCompilationOverridesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the workspace_compilation_overrides field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withWorkspaceCompilationOverrides](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `workspace_compilation_overrides` field.\n', args=[]),
  withWorkspaceCompilationOverridesMixin(resourceLabel, value): {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          workspace_compilation_overrides+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  workspace_compilation_overrides:: {
    '#new':: d.fn(help='\n`google-beta.google_dataform_repository.workspace_compilation_overrides.new` constructs a new object with attributes and blocks configured for the `workspace_compilation_overrides`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default_database` (`string`): The default database (Google Cloud project ID). When `null`, the `default_database` field will be omitted from the resulting object.\n  - `schema_suffix` (`string`): The suffix that should be appended to all schema (BigQuery dataset ID) names. When `null`, the `schema_suffix` field will be omitted from the resulting object.\n  - `table_prefix` (`string`): The prefix that should be prepended to all table names. When `null`, the `table_prefix` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `workspace_compilation_overrides` sub block.\n', args=[]),
    new(
      default_database=null,
      schema_suffix=null,
      table_prefix=null
    ):: std.prune(a={
      default_database: default_database,
      schema_suffix: schema_suffix,
      table_prefix: table_prefix,
    }),
  },
}
