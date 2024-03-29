local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_dataform_repository', url='', help='`google_dataform_repository` represents the `google-beta_google_dataform_repository` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  git_remote_settings:: {
    '#new':: d.fn(help='\n`google-beta.google_dataform_repository.git_remote_settings.new` constructs a new object with attributes and blocks configured for the `git_remote_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `authentication_token_secret_version` (`string`): The name of the Secret Manager secret version to use as an authentication token for Git operations. Must be in the format projects/*/secrets/*/versions/*.\n  - `default_branch` (`string`): The Git remote&#39;s default branch name.\n  - `url` (`string`): The Git remote&#39;s URL.\n\n**Returns**:\n  - An attribute object that represents the `git_remote_settings` sub block.\n', args=[]),
    new(
      authentication_token_secret_version,
      default_branch,
      url
    ):: std.prune(a={
      authentication_token_secret_version: authentication_token_secret_version,
      default_branch: default_branch,
      url: url,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_dataform_repository.new` injects a new `google-beta_google_dataform_repository` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_dataform_repository.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_dataform_repository` using the reference:\n\n    $._ref.google-beta_google_dataform_repository.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_dataform_repository.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `name` (`string`): The repository\u0026#39;s name.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.\n  - `git_remote_settings` (`list[obj]`): Optional. If set, configures this repository to be linked to a Git remote. When `null`, the `git_remote_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.git_remote_settings.new](#fn-git_remote_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.timeouts.new](#fn-timeoutsnew) constructor.\n  - `workspace_compilation_overrides` (`list[obj]`): Optional. If set, fields of workspaceCompilationOverrides override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. When `null`, the `workspace_compilation_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.workspace_compilation_overrides.new](#fn-workspace_compilation_overridesnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    git_remote_settings=null,
    project=null,
    region=null,
    timeouts=null,
    workspace_compilation_overrides=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataform_repository',
    label=resourceLabel,
    attrs=self.newAttrs(
      git_remote_settings=git_remote_settings,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts,
      workspace_compilation_overrides=workspace_compilation_overrides
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_dataform_repository.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataform_repository`\nTerraform resource.\n\nUnlike [google-beta.google_dataform_repository.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): The repository&#39;s name.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.\n  - `git_remote_settings` (`list[obj]`): Optional. If set, configures this repository to be linked to a Git remote. When `null`, the `git_remote_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.git_remote_settings.new](#fn-git_remote_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.timeouts.new](#fn-timeoutsnew) constructor.\n  - `workspace_compilation_overrides` (`list[obj]`): Optional. If set, fields of workspaceCompilationOverrides override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. When `null`, the `workspace_compilation_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.workspace_compilation_overrides.new](#fn-workspace_compilation_overridesnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataform_repository` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    git_remote_settings=null,
    project=null,
    region=null,
    timeouts=null,
    workspace_compilation_overrides=null
  ):: std.prune(a={
    git_remote_settings: git_remote_settings,
    name: name,
    project: project,
    region: region,
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
    '#new':: d.fn(help='\n`google-beta.google_dataform_repository.workspace_compilation_overrides.new` constructs a new object with attributes and blocks configured for the `workspace_compilation_overrides`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default_database` (`string`): Optional. The default database (Google Cloud project ID). When `null`, the `default_database` field will be omitted from the resulting object.\n  - `schema_suffix` (`string`): Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names. When `null`, the `schema_suffix` field will be omitted from the resulting object.\n  - `table_prefix` (`string`): Optional. The prefix that should be prepended to all table names. When `null`, the `table_prefix` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `workspace_compilation_overrides` sub block.\n', args=[]),
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
