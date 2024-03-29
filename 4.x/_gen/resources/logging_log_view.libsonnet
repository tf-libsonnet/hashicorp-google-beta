local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_logging_log_view', url='', help='`google_logging_log_view` represents the `google-beta_google_logging_log_view` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_logging_log_view.new` injects a new `google-beta_google_logging_log_view` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_logging_log_view.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_logging_log_view` using the reference:\n\n    $._ref.google-beta_google_logging_log_view.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_logging_log_view.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `bucket` (`string`): The bucket of the resource\n  - `description` (`string`): Describes this view. When `null`, the `description` field will be omitted from the resulting object.\n  - `filter` (`string`): Filter that restricts which log entries in a bucket are visible in this view. Filters are restricted to be a logical AND of ==/!= of any of the following: - originating project/folder/organization/billing account. - resource type - log id For example: SOURCE(\u0026#34;projects/myproject\u0026#34;) AND resource.type = \u0026#34;gce_instance\u0026#34; AND LOG_ID(\u0026#34;stdout\u0026#34;) When `null`, the `filter` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the view. For example: \\\u0026#39;projects/my-project/locations/global/buckets/my-bucket/views/my-view\\\u0026#39;\n  - `parent` (`string`): The parent of the resource. When `null`, the `parent` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_logging_log_view.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    bucket,
    name,
    description=null,
    filter=null,
    location=null,
    parent=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_log_view',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      description=description,
      filter=filter,
      location=location,
      name=name,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_logging_log_view.newAttrs` constructs a new object with attributes and blocks configured for the `google_logging_log_view`\nTerraform resource.\n\nUnlike [google-beta.google_logging_log_view.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket` (`string`): The bucket of the resource\n  - `description` (`string`): Describes this view. When `null`, the `description` field will be omitted from the resulting object.\n  - `filter` (`string`): Filter that restricts which log entries in a bucket are visible in this view. Filters are restricted to be a logical AND of ==/!= of any of the following: - originating project/folder/organization/billing account. - resource type - log id For example: SOURCE(&#34;projects/myproject&#34;) AND resource.type = &#34;gce_instance&#34; AND LOG_ID(&#34;stdout&#34;) When `null`, the `filter` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the view. For example: \\&#39;projects/my-project/locations/global/buckets/my-bucket/views/my-view\\&#39;\n  - `parent` (`string`): The parent of the resource. When `null`, the `parent` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_logging_log_view.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_logging_log_view` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket,
    name,
    description=null,
    filter=null,
    location=null,
    parent=null,
    timeouts=null
  ):: std.prune(a={
    bucket: bucket,
    description: description,
    filter: filter,
    location: location,
    name: name,
    parent: parent,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_logging_log_view.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBucket':: d.fn(help='`google-beta.string.withBucket` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the bucket field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket` field.\n', args=[]),
  withBucket(resourceLabel, value): {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFilter':: d.fn(help='`google-beta.string.withFilter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the filter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `filter` field.\n', args=[]),
  withFilter(resourceLabel, value): {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google-beta.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
