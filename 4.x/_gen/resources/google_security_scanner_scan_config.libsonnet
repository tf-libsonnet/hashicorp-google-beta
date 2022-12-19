local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_security_scanner_scan_config', url='', help='`google_security_scanner_scan_config` represents the `google-beta_google_security_scanner_scan_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  authentication:: {
    custom_account:: {
      '#new':: d.fn(help='\n`google-beta.google_security_scanner_scan_config.authentication.custom_account.new` constructs a new object with attributes and blocks configured for the `custom_account`\nTerraform sub block.\n\n\n\n**Args**:\n  - `login_url` (`string`): The login form URL of the website.\n  - `password` (`string`): The password of the custom account. The credential is stored encrypted\nin GCP.\n  - `username` (`string`): The user name of the custom account.\n\n**Returns**:\n  - An attribute object that represents the `custom_account` sub block.\n', args=[]),
      new(
        login_url,
        password,
        username
      ):: std.prune(a={
        login_url: login_url,
        password: password,
        username: username,
      }),
    },
    google_account:: {
      '#new':: d.fn(help='\n`google-beta.google_security_scanner_scan_config.authentication.google_account.new` constructs a new object with attributes and blocks configured for the `google_account`\nTerraform sub block.\n\n\n\n**Args**:\n  - `password` (`string`): The password of the Google account. The credential is stored encrypted\nin GCP.\n  - `username` (`string`): The user name of the Google account.\n\n**Returns**:\n  - An attribute object that represents the `google_account` sub block.\n', args=[]),
      new(
        password,
        username
      ):: std.prune(a={
        password: password,
        username: username,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_security_scanner_scan_config.authentication.new` constructs a new object with attributes and blocks configured for the `authentication`\nTerraform sub block.\n\n\n\n**Args**:\n  - `custom_account` (`list[obj]`): Describes authentication configuration that uses a custom account. When `null`, the `custom_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.authentication.custom_account.new](#fn-authenticationcustom_accountnew) constructor.\n  - `google_account` (`list[obj]`): Describes authentication configuration that uses a Google account. When `null`, the `google_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.authentication.google_account.new](#fn-authenticationgoogle_accountnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `authentication` sub block.\n', args=[]),
    new(
      custom_account=null,
      google_account=null
    ):: std.prune(a={
      custom_account: custom_account,
      google_account: google_account,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_security_scanner_scan_config.new` injects a new `google-beta_google_security_scanner_scan_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_security_scanner_scan_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_security_scanner_scan_config` using the reference:\n\n    $._ref.google-beta_google_security_scanner_scan_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_security_scanner_scan_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `blacklist_patterns` (`list`): The blacklist URL patterns as described in\nhttps://cloud.google.com/security-scanner/docs/excluded-urls When `null`, the `blacklist_patterns` field will be omitted from the resulting object.\n  - `display_name` (`string`): The user provider display name of the ScanConfig.\n  - `export_to_security_command_center` (`string`): Controls export of scan configurations and results to Cloud Security Command Center. Default value: \u0026#34;ENABLED\u0026#34; Possible values: [\u0026#34;ENABLED\u0026#34;, \u0026#34;DISABLED\u0026#34;] When `null`, the `export_to_security_command_center` field will be omitted from the resulting object.\n  - `max_qps` (`number`): The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively.\nDefaults to 15. When `null`, the `max_qps` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `starting_urls` (`list`): The starting URLs from which the scanner finds site pages.\n  - `target_platforms` (`list`): Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be used as a default. Possible values: [\u0026#34;APP_ENGINE\u0026#34;, \u0026#34;COMPUTE\u0026#34;] When `null`, the `target_platforms` field will be omitted from the resulting object.\n  - `user_agent` (`string`): Type of the user agents used for scanning Default value: \u0026#34;CHROME_LINUX\u0026#34; Possible values: [\u0026#34;USER_AGENT_UNSPECIFIED\u0026#34;, \u0026#34;CHROME_LINUX\u0026#34;, \u0026#34;CHROME_ANDROID\u0026#34;, \u0026#34;SAFARI_IPHONE\u0026#34;] When `null`, the `user_agent` field will be omitted from the resulting object.\n  - `authentication` (`list[obj]`): The authentication configuration.\nIf specified, service will use the authentication configuration during scanning. When `null`, the `authentication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.authentication.new](#fn-authenticationnew) constructor.\n  - `schedule` (`list[obj]`): The schedule of the ScanConfig When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.schedule.new](#fn-schedulenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    starting_urls,
    authentication=null,
    blacklist_patterns=null,
    export_to_security_command_center=null,
    max_qps=null,
    project=null,
    schedule=null,
    target_platforms=null,
    timeouts=null,
    user_agent=null,
    _meta={}
  ):: tf.withResource(
    type='google_security_scanner_scan_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      authentication=authentication,
      blacklist_patterns=blacklist_patterns,
      display_name=display_name,
      export_to_security_command_center=export_to_security_command_center,
      max_qps=max_qps,
      project=project,
      schedule=schedule,
      starting_urls=starting_urls,
      target_platforms=target_platforms,
      timeouts=timeouts,
      user_agent=user_agent
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_security_scanner_scan_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_security_scanner_scan_config`\nTerraform resource.\n\nUnlike [google-beta.google_security_scanner_scan_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `blacklist_patterns` (`list`): The blacklist URL patterns as described in\nhttps://cloud.google.com/security-scanner/docs/excluded-urls When `null`, the `blacklist_patterns` field will be omitted from the resulting object.\n  - `display_name` (`string`): The user provider display name of the ScanConfig.\n  - `export_to_security_command_center` (`string`): Controls export of scan configurations and results to Cloud Security Command Center. Default value: &#34;ENABLED&#34; Possible values: [&#34;ENABLED&#34;, &#34;DISABLED&#34;] When `null`, the `export_to_security_command_center` field will be omitted from the resulting object.\n  - `max_qps` (`number`): The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively.\nDefaults to 15. When `null`, the `max_qps` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `starting_urls` (`list`): The starting URLs from which the scanner finds site pages.\n  - `target_platforms` (`list`): Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be used as a default. Possible values: [&#34;APP_ENGINE&#34;, &#34;COMPUTE&#34;] When `null`, the `target_platforms` field will be omitted from the resulting object.\n  - `user_agent` (`string`): Type of the user agents used for scanning Default value: &#34;CHROME_LINUX&#34; Possible values: [&#34;USER_AGENT_UNSPECIFIED&#34;, &#34;CHROME_LINUX&#34;, &#34;CHROME_ANDROID&#34;, &#34;SAFARI_IPHONE&#34;] When `null`, the `user_agent` field will be omitted from the resulting object.\n  - `authentication` (`list[obj]`): The authentication configuration.\nIf specified, service will use the authentication configuration during scanning. When `null`, the `authentication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.authentication.new](#fn-authenticationnew) constructor.\n  - `schedule` (`list[obj]`): The schedule of the ScanConfig When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.schedule.new](#fn-schedulenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_security_scanner_scan_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    starting_urls,
    authentication=null,
    blacklist_patterns=null,
    export_to_security_command_center=null,
    max_qps=null,
    project=null,
    schedule=null,
    target_platforms=null,
    timeouts=null,
    user_agent=null
  ):: std.prune(a={
    authentication: authentication,
    blacklist_patterns: blacklist_patterns,
    display_name: display_name,
    export_to_security_command_center: export_to_security_command_center,
    max_qps: max_qps,
    project: project,
    schedule: schedule,
    starting_urls: starting_urls,
    target_platforms: target_platforms,
    timeouts: timeouts,
    user_agent: user_agent,
  }),
  schedule:: {
    '#new':: d.fn(help='\n`google-beta.google_security_scanner_scan_config.schedule.new` constructs a new object with attributes and blocks configured for the `schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `interval_duration_days` (`number`): The duration of time between executions in days\n  - `schedule_time` (`string`): A timestamp indicates when the next run will be scheduled. The value is refreshed\nby the server after each run. If unspecified, it will default to current server time,\nwhich means the scan will be scheduled to start immediately. When `null`, the `schedule_time` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `schedule` sub block.\n', args=[]),
    new(
      interval_duration_days,
      schedule_time=null
    ):: std.prune(a={
      interval_duration_days: interval_duration_days,
      schedule_time: schedule_time,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_security_scanner_scan_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAuthentication':: d.fn(help='`google-beta.list[obj].withAuthentication` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the authentication field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withAuthenticationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `authentication` field.\n', args=[]),
  withAuthentication(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          authentication: value,
        },
      },
    },
  },
  '#withAuthenticationMixin':: d.fn(help='`google-beta.list[obj].withAuthenticationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the authentication field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAuthentication](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `authentication` field.\n', args=[]),
  withAuthenticationMixin(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          authentication+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBlacklistPatterns':: d.fn(help='`google-beta.list.withBlacklistPatterns` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the blacklist_patterns field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `blacklist_patterns` field.\n', args=[]),
  withBlacklistPatterns(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          blacklist_patterns: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withExportToSecurityCommandCenter':: d.fn(help='`google-beta.string.withExportToSecurityCommandCenter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the export_to_security_command_center field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `export_to_security_command_center` field.\n', args=[]),
  withExportToSecurityCommandCenter(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          export_to_security_command_center: value,
        },
      },
    },
  },
  '#withMaxQps':: d.fn(help='`google-beta.number.withMaxQps` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the max_qps field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `max_qps` field.\n', args=[]),
  withMaxQps(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          max_qps: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSchedule':: d.fn(help='`google-beta.list[obj].withSchedule` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the schedule field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withScheduleMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `schedule` field.\n', args=[]),
  withSchedule(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          schedule: value,
        },
      },
    },
  },
  '#withScheduleMixin':: d.fn(help='`google-beta.list[obj].withScheduleMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the schedule field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withSchedule](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `schedule` field.\n', args=[]),
  withScheduleMixin(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          schedule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withStartingUrls':: d.fn(help='`google-beta.list.withStartingUrls` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the starting_urls field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `starting_urls` field.\n', args=[]),
  withStartingUrls(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          starting_urls: value,
        },
      },
    },
  },
  '#withTargetPlatforms':: d.fn(help='`google-beta.list.withTargetPlatforms` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the target_platforms field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `target_platforms` field.\n', args=[]),
  withTargetPlatforms(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          target_platforms: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUserAgent':: d.fn(help='`google-beta.string.withUserAgent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the user_agent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `user_agent` field.\n', args=[]),
  withUserAgent(resourceLabel, value): {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          user_agent: value,
        },
      },
    },
  },
}
