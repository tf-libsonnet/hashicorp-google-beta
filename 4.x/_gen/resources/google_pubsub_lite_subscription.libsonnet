local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_pubsub_lite_subscription', url='', help='`google_pubsub_lite_subscription` represents the `google-beta_google_pubsub_lite_subscription` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  delivery_config:: {
    '#new':: d.fn(help='\n`google-beta.google_pubsub_lite_subscription.delivery_config.new` constructs a new object with attributes and blocks configured for the `delivery_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `delivery_requirement` (`string`): When this subscription should send messages to subscribers relative to messages persistence in storage. Possible values: [&#34;DELIVER_IMMEDIATELY&#34;, &#34;DELIVER_AFTER_STORED&#34;, &#34;DELIVERY_REQUIREMENT_UNSPECIFIED&#34;]\n\n**Returns**:\n  - An attribute object that represents the `delivery_config` sub block.\n', args=[]),
    new(
      delivery_requirement
    ):: std.prune(a={
      delivery_requirement: delivery_requirement,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_pubsub_lite_subscription.new` injects a new `google-beta_google_pubsub_lite_subscription` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_pubsub_lite_subscription.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_pubsub_lite_subscription` using the reference:\n\n    $._ref.google-beta_google_pubsub_lite_subscription.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_pubsub_lite_subscription.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `name` (`string`): Name of the subscription.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the pubsub lite topic. When `null`, the `region` field will be omitted from the resulting object.\n  - `topic` (`string`): A reference to a Topic resource.\n  - `zone` (`string`): The zone of the pubsub lite topic. When `null`, the `zone` field will be omitted from the resulting object.\n  - `delivery_config` (`list[obj]`): The settings for this subscription\u0026#39;s message delivery. When `null`, the `delivery_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_pubsub_lite_subscription.delivery_config.new](#fn-delivery_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_pubsub_lite_subscription.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    topic,
    delivery_config=null,
    project=null,
    region=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_lite_subscription',
    label=resourceLabel,
    attrs=self.newAttrs(
      delivery_config=delivery_config,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts,
      topic=topic,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_pubsub_lite_subscription.newAttrs` constructs a new object with attributes and blocks configured for the `google_pubsub_lite_subscription`\nTerraform resource.\n\nUnlike [google-beta.google_pubsub_lite_subscription.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): Name of the subscription.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the pubsub lite topic. When `null`, the `region` field will be omitted from the resulting object.\n  - `topic` (`string`): A reference to a Topic resource.\n  - `zone` (`string`): The zone of the pubsub lite topic. When `null`, the `zone` field will be omitted from the resulting object.\n  - `delivery_config` (`list[obj]`): The settings for this subscription&#39;s message delivery. When `null`, the `delivery_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_pubsub_lite_subscription.delivery_config.new](#fn-delivery_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_pubsub_lite_subscription.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_pubsub_lite_subscription` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    topic,
    delivery_config=null,
    project=null,
    region=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    delivery_config: delivery_config,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
    topic: topic,
    zone: zone,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_pubsub_lite_subscription.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDeliveryConfig':: d.fn(help='`google-beta.list[obj].withDeliveryConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the delivery_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withDeliveryConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `delivery_config` field.\n', args=[]),
  withDeliveryConfig(resourceLabel, value): {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          delivery_config: value,
        },
      },
    },
  },
  '#withDeliveryConfigMixin':: d.fn(help='`google-beta.list[obj].withDeliveryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the delivery_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withDeliveryConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `delivery_config` field.\n', args=[]),
  withDeliveryConfigMixin(resourceLabel, value): {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          delivery_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTopic':: d.fn(help='`google-beta.string.withTopic` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the topic field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `topic` field.\n', args=[]),
  withTopic(resourceLabel, value): {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          topic: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google-beta.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
