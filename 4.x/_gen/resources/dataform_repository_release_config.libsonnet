local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_dataform_repository_release_config', url='', help='`google_dataform_repository_release_config` represents the `google-beta_google_dataform_repository_release_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  code_compilation_config:: {
    '#new':: d.fn(help='\n`google-beta.google_dataform_repository_release_config.code_compilation_config.new` constructs a new object with attributes and blocks configured for the `code_compilation_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `assertion_schema` (`string`): Optional. The default schema (BigQuery dataset ID) for assertions. When `null`, the `assertion_schema` field will be omitted from the resulting object.\n  - `database_suffix` (`string`): Optional. The suffix that should be appended to all database (Google Cloud project ID) names. When `null`, the `database_suffix` field will be omitted from the resulting object.\n  - `default_database` (`string`): Optional. The default database (Google Cloud project ID). When `null`, the `default_database` field will be omitted from the resulting object.\n  - `default_location` (`string`): Optional. The default BigQuery location to use. Defaults to &#34;US&#34;.\nSee the BigQuery docs for a full list of locations: https://cloud.google.com/bigquery/docs/locations. When `null`, the `default_location` field will be omitted from the resulting object.\n  - `default_schema` (`string`): Optional. The default schema (BigQuery dataset ID). When `null`, the `default_schema` field will be omitted from the resulting object.\n  - `schema_suffix` (`string`): Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names. When `null`, the `schema_suffix` field will be omitted from the resulting object.\n  - `table_prefix` (`string`): Optional. The prefix that should be prepended to all table names. When `null`, the `table_prefix` field will be omitted from the resulting object.\n  - `vars` (`obj`): Optional. User-defined variables that are made available to project code during compilation.\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `vars` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `code_compilation_config` sub block.\n', args=[]),
    new(
      assertion_schema=null,
      database_suffix=null,
      default_database=null,
      default_location=null,
      default_schema=null,
      schema_suffix=null,
      table_prefix=null,
      vars=null
    ):: std.prune(a={
      assertion_schema: assertion_schema,
      database_suffix: database_suffix,
      default_database: default_database,
      default_location: default_location,
      default_schema: default_schema,
      schema_suffix: schema_suffix,
      table_prefix: table_prefix,
      vars: vars,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_dataform_repository_release_config.new` injects a new `google-beta_google_dataform_repository_release_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_dataform_repository_release_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_dataform_repository_release_config` using the reference:\n\n    $._ref.google-beta_google_dataform_repository_release_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_dataform_repository_release_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cron_schedule` (`string`): Optional. Optional schedule (in cron format) for automatic creation of compilation results. When `null`, the `cron_schedule` field will be omitted from the resulting object.\n  - `git_commitish` (`string`): Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository.\n  - `name` (`string`): The release\u0026#39;s name.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.\n  - `repository` (`string`): A reference to the Dataform repository When `null`, the `repository` field will be omitted from the resulting object.\n  - `time_zone` (`string`): Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC. When `null`, the `time_zone` field will be omitted from the resulting object.\n  - `code_compilation_config` (`list[obj]`): Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json. When `null`, the `code_compilation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_release_config.code_compilation_config.new](#fn-code_compilation_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_release_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    git_commitish,
    name,
    code_compilation_config=null,
    cron_schedule=null,
    project=null,
    region=null,
    repository=null,
    time_zone=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataform_repository_release_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      code_compilation_config=code_compilation_config,
      cron_schedule=cron_schedule,
      git_commitish=git_commitish,
      name=name,
      project=project,
      region=region,
      repository=repository,
      time_zone=time_zone,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_dataform_repository_release_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataform_repository_release_config`\nTerraform resource.\n\nUnlike [google-beta.google_dataform_repository_release_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cron_schedule` (`string`): Optional. Optional schedule (in cron format) for automatic creation of compilation results. When `null`, the `cron_schedule` field will be omitted from the resulting object.\n  - `git_commitish` (`string`): Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository.\n  - `name` (`string`): The release&#39;s name.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.\n  - `repository` (`string`): A reference to the Dataform repository When `null`, the `repository` field will be omitted from the resulting object.\n  - `time_zone` (`string`): Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC. When `null`, the `time_zone` field will be omitted from the resulting object.\n  - `code_compilation_config` (`list[obj]`): Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json. When `null`, the `code_compilation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_release_config.code_compilation_config.new](#fn-code_compilation_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_release_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataform_repository_release_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    git_commitish,
    name,
    code_compilation_config=null,
    cron_schedule=null,
    project=null,
    region=null,
    repository=null,
    time_zone=null,
    timeouts=null
  ):: std.prune(a={
    code_compilation_config: code_compilation_config,
    cron_schedule: cron_schedule,
    git_commitish: git_commitish,
    name: name,
    project: project,
    region: region,
    repository: repository,
    time_zone: time_zone,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_dataform_repository_release_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCodeCompilationConfig':: d.fn(help='`google-beta.list[obj].withCodeCompilationConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the code_compilation_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withCodeCompilationConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `code_compilation_config` field.\n', args=[]),
  withCodeCompilationConfig(resourceLabel, value): {
    resource+: {
      google_dataform_repository_release_config+: {
        [resourceLabel]+: {
          code_compilation_config: value,
        },
      },
    },
  },
  '#withCodeCompilationConfigMixin':: d.fn(help='`google-beta.list[obj].withCodeCompilationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the code_compilation_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withCodeCompilationConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `code_compilation_config` field.\n', args=[]),
  withCodeCompilationConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataform_repository_release_config+: {
        [resourceLabel]+: {
          code_compilation_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCronSchedule':: d.fn(help='`google-beta.string.withCronSchedule` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cron_schedule field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cron_schedule` field.\n', args=[]),
  withCronSchedule(resourceLabel, value): {
    resource+: {
      google_dataform_repository_release_config+: {
        [resourceLabel]+: {
          cron_schedule: value,
        },
      },
    },
  },
  '#withGitCommitish':: d.fn(help='`google-beta.string.withGitCommitish` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the git_commitish field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `git_commitish` field.\n', args=[]),
  withGitCommitish(resourceLabel, value): {
    resource+: {
      google_dataform_repository_release_config+: {
        [resourceLabel]+: {
          git_commitish: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_dataform_repository_release_config+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataform_repository_release_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_dataform_repository_release_config+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withRepository':: d.fn(help='`google-beta.string.withRepository` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the repository field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `repository` field.\n', args=[]),
  withRepository(resourceLabel, value): {
    resource+: {
      google_dataform_repository_release_config+: {
        [resourceLabel]+: {
          repository: value,
        },
      },
    },
  },
  '#withTimeZone':: d.fn(help='`google-beta.string.withTimeZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the time_zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `time_zone` field.\n', args=[]),
  withTimeZone(resourceLabel, value): {
    resource+: {
      google_dataform_repository_release_config+: {
        [resourceLabel]+: {
          time_zone: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dataform_repository_release_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dataform_repository_release_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
