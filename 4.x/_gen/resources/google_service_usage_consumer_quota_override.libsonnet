local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_service_usage_consumer_quota_override', url='', help='`google_service_usage_consumer_quota_override` represents the `google-beta_google_service_usage_consumer_quota_override` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_service_usage_consumer_quota_override.new` injects a new `google-beta_google_service_usage_consumer_quota_override` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_service_usage_consumer_quota_override.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_service_usage_consumer_quota_override` using the reference:\n\n    $._ref.google-beta_google_service_usage_consumer_quota_override.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_service_usage_consumer_quota_override.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `dimensions` (`obj`): If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit. When `null`, the `dimensions` field will be omitted from the resulting object.\n  - `force` (`bool`): If the new quota would decrease the existing quota by more than 10%, the request is rejected.\nIf \u0026#39;force\u0026#39; is \u0026#39;true\u0026#39;, that safety check is ignored. When `null`, the `force` field will be omitted from the resulting object.\n  - `limit` (`string`): The limit on the metric, e.g. \u0026#39;/project/region\u0026#39;.\n\n~\u0026gt; Make sure that \u0026#39;limit\u0026#39; is in a format that doesn\u0026#39;t start with \u0026#39;1/\u0026#39; or contain curly braces.\nE.g. use \u0026#39;/project/user\u0026#39; instead of \u0026#39;1/{project}/{user}\u0026#39;.\n  - `metric` (`string`): The metric that should be limited, e.g. \u0026#39;compute.googleapis.com/cpus\u0026#39;.\n  - `override_value` (`string`): The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota).\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service` (`string`): The service that the metrics belong to, e.g. \u0026#39;compute.googleapis.com\u0026#39;.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_service_usage_consumer_quota_override.timeouts.new](#fn-google_service_usage_consumer_quota_overridetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    limit,
    metric,
    override_value,
    service,
    dimensions=null,
    force=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_usage_consumer_quota_override',
    label=resourceLabel,
    attrs=self.newAttrs(
      dimensions=dimensions,
      force=force,
      limit=limit,
      metric=metric,
      override_value=override_value,
      project=project,
      service=service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_service_usage_consumer_quota_override.newAttrs` constructs a new object with attributes and blocks configured for the `google_service_usage_consumer_quota_override`\nTerraform resource.\n\nUnlike [google-beta.google_service_usage_consumer_quota_override.new](#fn-google_service_usage_consumer_quota_overridenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dimensions` (`obj`): If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit. When `null`, the `dimensions` field will be omitted from the resulting object.\n  - `force` (`bool`): If the new quota would decrease the existing quota by more than 10%, the request is rejected.\nIf &#39;force&#39; is &#39;true&#39;, that safety check is ignored. When `null`, the `force` field will be omitted from the resulting object.\n  - `limit` (`string`): The limit on the metric, e.g. &#39;/project/region&#39;.\n\n~&gt; Make sure that &#39;limit&#39; is in a format that doesn&#39;t start with &#39;1/&#39; or contain curly braces.\nE.g. use &#39;/project/user&#39; instead of &#39;1/{project}/{user}&#39;.\n  - `metric` (`string`): The metric that should be limited, e.g. &#39;compute.googleapis.com/cpus&#39;.\n  - `override_value` (`string`): The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota).\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service` (`string`): The service that the metrics belong to, e.g. &#39;compute.googleapis.com&#39;.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_service_usage_consumer_quota_override.timeouts.new](#fn-google_service_usage_consumer_quota_overridetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_service_usage_consumer_quota_override` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    limit,
    metric,
    override_value,
    service,
    dimensions=null,
    force=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    dimensions: dimensions,
    force: force,
    limit: limit,
    metric: metric,
    override_value: override_value,
    project: project,
    service: service,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_service_usage_consumer_quota_override.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDimensions':: d.fn(help='`google-beta.obj.withDimensions` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the dimensions field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `dimensions` field.\n', args=[]),
  withDimensions(resourceLabel, value): {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          dimensions: value,
        },
      },
    },
  },
  '#withForce':: d.fn(help='`google-beta.bool.withForce` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the force field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `force` field.\n', args=[]),
  withForce(resourceLabel, value): {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          force: value,
        },
      },
    },
  },
  '#withLimit':: d.fn(help='`google-beta.string.withLimit` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the limit field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `limit` field.\n', args=[]),
  withLimit(resourceLabel, value): {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          limit: value,
        },
      },
    },
  },
  '#withMetric':: d.fn(help='`google-beta.string.withMetric` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the metric field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `metric` field.\n', args=[]),
  withMetric(resourceLabel, value): {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          metric: value,
        },
      },
    },
  },
  '#withOverrideValue':: d.fn(help='`google-beta.string.withOverrideValue` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the override_value field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `override_value` field.\n', args=[]),
  withOverrideValue(resourceLabel, value): {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          override_value: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withService':: d.fn(help='`google-beta.string.withService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service` field.\n', args=[]),
  withService(resourceLabel, value): {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
