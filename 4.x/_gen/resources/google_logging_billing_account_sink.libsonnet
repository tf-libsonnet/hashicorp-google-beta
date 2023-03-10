local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_logging_billing_account_sink', url='', help='`google_logging_billing_account_sink` represents the `google-beta_google_logging_billing_account_sink` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  bigquery_options:: {
    '#new':: d.fn(help='\n`google-beta.google_logging_billing_account_sink.bigquery_options.new` constructs a new object with attributes and blocks configured for the `bigquery_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `use_partitioned_tables` (`bool`): Whether to use BigQuery&#39;s partition tables. By default, Logging creates dated tables based on the log entries&#39; timestamps, e.g. syslog_20170523. With partitioned tables the date suffix is no longer present and special query syntax has to be used instead. In both cases, tables are sharded based on UTC timezone.\n\n**Returns**:\n  - An attribute object that represents the `bigquery_options` sub block.\n', args=[]),
    new(
      use_partitioned_tables
    ):: std.prune(a={
      use_partitioned_tables: use_partitioned_tables,
    }),
  },
  exclusions:: {
    '#new':: d.fn(help='\n`google-beta.google_logging_billing_account_sink.exclusions.new` constructs a new object with attributes and blocks configured for the `exclusions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): A description of this exclusion. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): If set to True, then this exclusion is disabled and it does not exclude any log entries When `null`, the `disabled` field will be omitted from the resulting object.\n  - `filter` (`string`): An advanced logs filter that matches the log entries to be excluded. By using the sample function, you can exclude less than 100% of the matching log entries\n  - `name` (`string`): A client-assigned identifier, such as &#34;load-balancer-exclusion&#34;. Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.\n\n**Returns**:\n  - An attribute object that represents the `exclusions` sub block.\n', args=[]),
    new(
      filter,
      name,
      description=null,
      disabled=null
    ):: std.prune(a={
      description: description,
      disabled: disabled,
      filter: filter,
      name: name,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_logging_billing_account_sink.new` injects a new `google-beta_google_logging_billing_account_sink` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_logging_billing_account_sink.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_logging_billing_account_sink` using the reference:\n\n    $._ref.google-beta_google_logging_billing_account_sink.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_logging_billing_account_sink.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `billing_account` (`string`): The billing account exported to the sink.\n  - `description` (`string`): A description of this sink. The maximum length of the description is 8000 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `destination` (`string`): The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, or a BigQuery dataset. Examples: \u0026#34;storage.googleapis.com/[GCS_BUCKET]\u0026#34; \u0026#34;bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]\u0026#34; \u0026#34;pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]\u0026#34; The writer associated with the sink must have access to write to the above resource.\n  - `disabled` (`bool`): If set to True, then this sink is disabled and it does not export any log entries. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `filter` (`string`): The filter to apply when exporting logs. Only log entries that match the filter are exported. When `null`, the `filter` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the logging sink.\n  - `bigquery_options` (`list[obj]`): Options that affect sinks exporting data to BigQuery. When `null`, the `bigquery_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_logging_billing_account_sink.bigquery_options.new](#fn-bigquery_optionsnew) constructor.\n  - `exclusions` (`list[obj]`): Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both filter and one of exclusion\u0026#39;s filters, it will not be exported. When `null`, the `exclusions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_logging_billing_account_sink.exclusions.new](#fn-exclusionsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    billing_account,
    destination,
    name,
    bigquery_options=null,
    description=null,
    disabled=null,
    exclusions=null,
    filter=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_billing_account_sink',
    label=resourceLabel,
    attrs=self.newAttrs(
      bigquery_options=bigquery_options,
      billing_account=billing_account,
      description=description,
      destination=destination,
      disabled=disabled,
      exclusions=exclusions,
      filter=filter,
      name=name
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_logging_billing_account_sink.newAttrs` constructs a new object with attributes and blocks configured for the `google_logging_billing_account_sink`\nTerraform resource.\n\nUnlike [google-beta.google_logging_billing_account_sink.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `billing_account` (`string`): The billing account exported to the sink.\n  - `description` (`string`): A description of this sink. The maximum length of the description is 8000 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `destination` (`string`): The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, or a BigQuery dataset. Examples: &#34;storage.googleapis.com/[GCS_BUCKET]&#34; &#34;bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]&#34; &#34;pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]&#34; The writer associated with the sink must have access to write to the above resource.\n  - `disabled` (`bool`): If set to True, then this sink is disabled and it does not export any log entries. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `filter` (`string`): The filter to apply when exporting logs. Only log entries that match the filter are exported. When `null`, the `filter` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the logging sink.\n  - `bigquery_options` (`list[obj]`): Options that affect sinks exporting data to BigQuery. When `null`, the `bigquery_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_logging_billing_account_sink.bigquery_options.new](#fn-bigquery_optionsnew) constructor.\n  - `exclusions` (`list[obj]`): Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both filter and one of exclusion&#39;s filters, it will not be exported. When `null`, the `exclusions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_logging_billing_account_sink.exclusions.new](#fn-exclusionsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_logging_billing_account_sink` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    billing_account,
    destination,
    name,
    bigquery_options=null,
    description=null,
    disabled=null,
    exclusions=null,
    filter=null
  ):: std.prune(a={
    bigquery_options: bigquery_options,
    billing_account: billing_account,
    description: description,
    destination: destination,
    disabled: disabled,
    exclusions: exclusions,
    filter: filter,
    name: name,
  }),
  '#withBigqueryOptions':: d.fn(help='`google-beta.list[obj].withBigqueryOptions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bigquery_options field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withBigqueryOptionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bigquery_options` field.\n', args=[]),
  withBigqueryOptions(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          bigquery_options: value,
        },
      },
    },
  },
  '#withBigqueryOptionsMixin':: d.fn(help='`google-beta.list[obj].withBigqueryOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bigquery_options field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withBigqueryOptions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bigquery_options` field.\n', args=[]),
  withBigqueryOptionsMixin(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          bigquery_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBillingAccount':: d.fn(help='`google-beta.string.withBillingAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the billing_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `billing_account` field.\n', args=[]),
  withBillingAccount(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          billing_account: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDestination':: d.fn(help='`google-beta.string.withDestination` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the destination field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `destination` field.\n', args=[]),
  withDestination(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          destination: value,
        },
      },
    },
  },
  '#withDisabled':: d.fn(help='`google-beta.bool.withDisabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withExclusions':: d.fn(help='`google-beta.list[obj].withExclusions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the exclusions field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withExclusionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `exclusions` field.\n', args=[]),
  withExclusions(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          exclusions: value,
        },
      },
    },
  },
  '#withExclusionsMixin':: d.fn(help='`google-beta.list[obj].withExclusionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the exclusions field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withExclusions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `exclusions` field.\n', args=[]),
  withExclusionsMixin(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          exclusions+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withFilter':: d.fn(help='`google-beta.string.withFilter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the filter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `filter` field.\n', args=[]),
  withFilter(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
}
