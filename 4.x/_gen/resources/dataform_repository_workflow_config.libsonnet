local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_dataform_repository_workflow_config', url='', help='`google_dataform_repository_workflow_config` represents the `google-beta_google_dataform_repository_workflow_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  invocation_config:: {
    included_targets:: {
      '#new':: d.fn(help='\n`google-beta.google_dataform_repository_workflow_config.invocation_config.included_targets.new` constructs a new object with attributes and blocks configured for the `included_targets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `database` (`string`): The action&#39;s database (Google Cloud project ID). When `null`, the `database` field will be omitted from the resulting object.\n  - `name` (`string`): The action&#39;s name, within database and schema. When `null`, the `name` field will be omitted from the resulting object.\n  - `schema` (`string`): The action&#39;s schema (BigQuery dataset ID), within database. When `null`, the `schema` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `included_targets` sub block.\n', args=[]),
      new(
        database=null,
        name=null,
        schema=null
      ):: std.prune(a={
        database: database,
        name: name,
        schema: schema,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_dataform_repository_workflow_config.invocation_config.new` constructs a new object with attributes and blocks configured for the `invocation_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `fully_refresh_incremental_tables_enabled` (`bool`): Optional. When set to true, any incremental tables will be fully refreshed. When `null`, the `fully_refresh_incremental_tables_enabled` field will be omitted from the resulting object.\n  - `included_tags` (`list`): Optional. The set of tags to include. When `null`, the `included_tags` field will be omitted from the resulting object.\n  - `service_account` (`string`): Optional. The service account to run workflow invocations under. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `transitive_dependencies_included` (`bool`): Optional. When set to true, transitive dependencies of included actions will be executed. When `null`, the `transitive_dependencies_included` field will be omitted from the resulting object.\n  - `transitive_dependents_included` (`bool`): Optional. When set to true, transitive dependents of included actions will be executed. When `null`, the `transitive_dependents_included` field will be omitted from the resulting object.\n  - `included_targets` (`list[obj]`): Optional. The set of action identifiers to include. When `null`, the `included_targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_workflow_config.invocation_config.included_targets.new](#fn-invocation_configincluded_targetsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `invocation_config` sub block.\n', args=[]),
    new(
      fully_refresh_incremental_tables_enabled=null,
      included_tags=null,
      included_targets=null,
      service_account=null,
      transitive_dependencies_included=null,
      transitive_dependents_included=null
    ):: std.prune(a={
      fully_refresh_incremental_tables_enabled: fully_refresh_incremental_tables_enabled,
      included_tags: included_tags,
      included_targets: included_targets,
      service_account: service_account,
      transitive_dependencies_included: transitive_dependencies_included,
      transitive_dependents_included: transitive_dependents_included,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_dataform_repository_workflow_config.new` injects a new `google-beta_google_dataform_repository_workflow_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_dataform_repository_workflow_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_dataform_repository_workflow_config` using the reference:\n\n    $._ref.google-beta_google_dataform_repository_workflow_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_dataform_repository_workflow_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cron_schedule` (`string`): Optional. Optional schedule (in cron format) for automatic creation of compilation results. When `null`, the `cron_schedule` field will be omitted from the resulting object.\n  - `name` (`string`): The workflow\u0026#39;s name.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.\n  - `release_config` (`string`): The name of the release config whose releaseCompilationResult should be executed. Must be in the format projects/*/locations/*/repositories/*/releaseConfigs/*.\n  - `repository` (`string`): A reference to the Dataform repository When `null`, the `repository` field will be omitted from the resulting object.\n  - `time_zone` (`string`): Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC. When `null`, the `time_zone` field will be omitted from the resulting object.\n  - `invocation_config` (`list[obj]`): Optional. If left unset, a default InvocationConfig will be used. When `null`, the `invocation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_workflow_config.invocation_config.new](#fn-invocation_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_workflow_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    release_config,
    cron_schedule=null,
    invocation_config=null,
    project=null,
    region=null,
    repository=null,
    time_zone=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataform_repository_workflow_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      cron_schedule=cron_schedule,
      invocation_config=invocation_config,
      name=name,
      project=project,
      region=region,
      release_config=release_config,
      repository=repository,
      time_zone=time_zone,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_dataform_repository_workflow_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataform_repository_workflow_config`\nTerraform resource.\n\nUnlike [google-beta.google_dataform_repository_workflow_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cron_schedule` (`string`): Optional. Optional schedule (in cron format) for automatic creation of compilation results. When `null`, the `cron_schedule` field will be omitted from the resulting object.\n  - `name` (`string`): The workflow&#39;s name.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.\n  - `release_config` (`string`): The name of the release config whose releaseCompilationResult should be executed. Must be in the format projects/*/locations/*/repositories/*/releaseConfigs/*.\n  - `repository` (`string`): A reference to the Dataform repository When `null`, the `repository` field will be omitted from the resulting object.\n  - `time_zone` (`string`): Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC. When `null`, the `time_zone` field will be omitted from the resulting object.\n  - `invocation_config` (`list[obj]`): Optional. If left unset, a default InvocationConfig will be used. When `null`, the `invocation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_workflow_config.invocation_config.new](#fn-invocation_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_workflow_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataform_repository_workflow_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    release_config,
    cron_schedule=null,
    invocation_config=null,
    project=null,
    region=null,
    repository=null,
    time_zone=null,
    timeouts=null
  ):: std.prune(a={
    cron_schedule: cron_schedule,
    invocation_config: invocation_config,
    name: name,
    project: project,
    region: region,
    release_config: release_config,
    repository: repository,
    time_zone: time_zone,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_dataform_repository_workflow_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCronSchedule':: d.fn(help='`google-beta.string.withCronSchedule` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cron_schedule field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cron_schedule` field.\n', args=[]),
  withCronSchedule(resourceLabel, value): {
    resource+: {
      google_dataform_repository_workflow_config+: {
        [resourceLabel]+: {
          cron_schedule: value,
        },
      },
    },
  },
  '#withInvocationConfig':: d.fn(help='`google-beta.list[obj].withInvocationConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the invocation_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withInvocationConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `invocation_config` field.\n', args=[]),
  withInvocationConfig(resourceLabel, value): {
    resource+: {
      google_dataform_repository_workflow_config+: {
        [resourceLabel]+: {
          invocation_config: value,
        },
      },
    },
  },
  '#withInvocationConfigMixin':: d.fn(help='`google-beta.list[obj].withInvocationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the invocation_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withInvocationConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `invocation_config` field.\n', args=[]),
  withInvocationConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataform_repository_workflow_config+: {
        [resourceLabel]+: {
          invocation_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_dataform_repository_workflow_config+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataform_repository_workflow_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_dataform_repository_workflow_config+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withReleaseConfig':: d.fn(help='`google-beta.string.withReleaseConfig` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the release_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `release_config` field.\n', args=[]),
  withReleaseConfig(resourceLabel, value): {
    resource+: {
      google_dataform_repository_workflow_config+: {
        [resourceLabel]+: {
          release_config: value,
        },
      },
    },
  },
  '#withRepository':: d.fn(help='`google-beta.string.withRepository` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the repository field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `repository` field.\n', args=[]),
  withRepository(resourceLabel, value): {
    resource+: {
      google_dataform_repository_workflow_config+: {
        [resourceLabel]+: {
          repository: value,
        },
      },
    },
  },
  '#withTimeZone':: d.fn(help='`google-beta.string.withTimeZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the time_zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `time_zone` field.\n', args=[]),
  withTimeZone(resourceLabel, value): {
    resource+: {
      google_dataform_repository_workflow_config+: {
        [resourceLabel]+: {
          time_zone: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dataform_repository_workflow_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dataform_repository_workflow_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
