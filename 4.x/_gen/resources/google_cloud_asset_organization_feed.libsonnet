local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_cloud_asset_organization_feed', url='', help='`google_cloud_asset_organization_feed` represents the `google-beta_google_cloud_asset_organization_feed` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  condition:: {
    '#new':: d.fn(help='\n`google-beta.google_cloud_asset_organization_feed.condition.new` constructs a new object with attributes and blocks configured for the `condition`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the expression. This is a longer text which describes the expression,\ne.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.\n  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file \nname and a position in the file. When `null`, the `location` field will be omitted from the resulting object.\n  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose.\nThis can be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `condition` sub block.\n', args=[]),
    new(
      expression,
      description=null,
      location=null,
      title=null
    ):: std.prune(a={
      description: description,
      expression: expression,
      location: location,
      title: title,
    }),
  },
  feed_output_config:: {
    '#new':: d.fn(help='\n`google-beta.google_cloud_asset_organization_feed.feed_output_config.new` constructs a new object with attributes and blocks configured for the `feed_output_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pubsub_destination` (`list[obj]`): Destination on Cloud Pubsub. When `null`, the `pubsub_destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_asset_organization_feed.feed_output_config.pubsub_destination.new](#fn-feedoutputconfigpubsubdestinationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `feed_output_config` sub block.\n', args=[]),
    new(
      pubsub_destination=null
    ):: std.prune(a={
      pubsub_destination: pubsub_destination,
    }),
    pubsub_destination:: {
      '#new':: d.fn(help='\n`google-beta.google_cloud_asset_organization_feed.feed_output_config.pubsub_destination.new` constructs a new object with attributes and blocks configured for the `pubsub_destination`\nTerraform sub block.\n\n\n\n**Args**:\n  - `topic` (`string`): Destination on Cloud Pubsub topic.\n\n**Returns**:\n  - An attribute object that represents the `pubsub_destination` sub block.\n', args=[]),
      new(
        topic
      ):: std.prune(a={
        topic: topic,
      }),
    },
  },
  '#new':: d.fn(help="\n`google-beta.google_cloud_asset_organization_feed.new` injects a new `google-beta_google_cloud_asset_organization_feed` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_cloud_asset_organization_feed.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_cloud_asset_organization_feed` using the reference:\n\n    $._ref.google-beta_google_cloud_asset_organization_feed.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_cloud_asset_organization_feed.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `asset_names` (`list`): A list of the full names of the assets to receive updates. You must specify either or both of \nassetNames and assetTypes. Only asset updates matching specified assetNames and assetTypes are\nexported to the feed. For example: //compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1.\nSee https://cloud.google.com/apis/design/resourceNames#fullResourceName for more info. When `null`, the `asset_names` field will be omitted from the resulting object.\n  - `asset_types` (`list`): A list of types of the assets to receive updates. You must specify either or both of assetNames\nand assetTypes. Only asset updates matching specified assetNames and assetTypes are exported to\nthe feed. For example: \u0026#34;compute.googleapis.com/Disk\u0026#34;\nSee https://cloud.google.com/asset-inventory/docs/supported-asset-types for a list of all\nsupported asset types. When `null`, the `asset_types` field will be omitted from the resulting object.\n  - `billing_project` (`string`): The project whose identity will be used when sending messages to the\ndestination pubsub topic. It also specifies the project for API \nenablement check, quota, and billing.\n  - `content_type` (`string`): Asset content type. If not specified, no content but the asset name and type will be returned. Possible values: [\u0026#34;CONTENT_TYPE_UNSPECIFIED\u0026#34;, \u0026#34;RESOURCE\u0026#34;, \u0026#34;IAM_POLICY\u0026#34;, \u0026#34;ORG_POLICY\u0026#34;, \u0026#34;ACCESS_POLICY\u0026#34;] When `null`, the `content_type` field will be omitted from the resulting object.\n  - `feed_id` (`string`): This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.\n  - `org_id` (`string`): The organization this feed should be created in.\n  - `condition` (`list[obj]`): A condition which determines whether an asset update should be published. If specified, an asset\nwill be returned only when the expression evaluates to true. When set, expression field\nmust be a valid CEL expression on a TemporalAsset with name temporal_asset. Example: a Feed with\nexpression \u0026#34;temporal_asset.deleted == true\u0026#34; will only publish Asset deletions. Other fields of\ncondition are optional. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_asset_organization_feed.condition.new](#fn-googlecloudassetorganizationfeedconditionnew) constructor.\n  - `feed_output_config` (`list[obj]`): Output configuration for asset feed destination. When `null`, the `feed_output_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_asset_organization_feed.feed_output_config.new](#fn-googlecloudassetorganizationfeedfeedoutputconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_asset_organization_feed.timeouts.new](#fn-googlecloudassetorganizationfeedtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    billing_project,
    feed_id,
    org_id,
    asset_names=null,
    asset_types=null,
    condition=null,
    content_type=null,
    feed_output_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_asset_organization_feed',
    label=resourceLabel,
    attrs=self.newAttrs(
      asset_names=asset_names,
      asset_types=asset_types,
      billing_project=billing_project,
      condition=condition,
      content_type=content_type,
      feed_id=feed_id,
      feed_output_config=feed_output_config,
      org_id=org_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_cloud_asset_organization_feed.newAttrs` constructs a new object with attributes and blocks configured for the `google_cloud_asset_organization_feed`\nTerraform resource.\n\nUnlike [google-beta.google_cloud_asset_organization_feed.new](#fn-googlecloudassetorganizationfeednew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `asset_names` (`list`): A list of the full names of the assets to receive updates. You must specify either or both of \nassetNames and assetTypes. Only asset updates matching specified assetNames and assetTypes are\nexported to the feed. For example: //compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1.\nSee https://cloud.google.com/apis/design/resourceNames#fullResourceName for more info. When `null`, the `asset_names` field will be omitted from the resulting object.\n  - `asset_types` (`list`): A list of types of the assets to receive updates. You must specify either or both of assetNames\nand assetTypes. Only asset updates matching specified assetNames and assetTypes are exported to\nthe feed. For example: &#34;compute.googleapis.com/Disk&#34;\nSee https://cloud.google.com/asset-inventory/docs/supported-asset-types for a list of all\nsupported asset types. When `null`, the `asset_types` field will be omitted from the resulting object.\n  - `billing_project` (`string`): The project whose identity will be used when sending messages to the\ndestination pubsub topic. It also specifies the project for API \nenablement check, quota, and billing.\n  - `content_type` (`string`): Asset content type. If not specified, no content but the asset name and type will be returned. Possible values: [&#34;CONTENT_TYPE_UNSPECIFIED&#34;, &#34;RESOURCE&#34;, &#34;IAM_POLICY&#34;, &#34;ORG_POLICY&#34;, &#34;ACCESS_POLICY&#34;] When `null`, the `content_type` field will be omitted from the resulting object.\n  - `feed_id` (`string`): This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.\n  - `org_id` (`string`): The organization this feed should be created in.\n  - `condition` (`list[obj]`): A condition which determines whether an asset update should be published. If specified, an asset\nwill be returned only when the expression evaluates to true. When set, expression field\nmust be a valid CEL expression on a TemporalAsset with name temporal_asset. Example: a Feed with\nexpression &#34;temporal_asset.deleted == true&#34; will only publish Asset deletions. Other fields of\ncondition are optional. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_asset_organization_feed.condition.new](#fn-googlecloudassetorganizationfeedconditionnew) constructor.\n  - `feed_output_config` (`list[obj]`): Output configuration for asset feed destination. When `null`, the `feed_output_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_asset_organization_feed.feed_output_config.new](#fn-googlecloudassetorganizationfeedfeedoutputconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_asset_organization_feed.timeouts.new](#fn-googlecloudassetorganizationfeedtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_cloud_asset_organization_feed` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    billing_project,
    feed_id,
    org_id,
    asset_names=null,
    asset_types=null,
    condition=null,
    content_type=null,
    feed_output_config=null,
    timeouts=null
  ):: std.prune(a={
    asset_names: asset_names,
    asset_types: asset_types,
    billing_project: billing_project,
    condition: condition,
    content_type: content_type,
    feed_id: feed_id,
    feed_output_config: feed_output_config,
    org_id: org_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_cloud_asset_organization_feed.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAssetNames':: d.fn(help='`google-beta.list.withAssetNames` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the asset_names field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `asset_names` field.\n', args=[]),
  withAssetNames(resourceLabel, value): {
    resource+: {
      google_cloud_asset_organization_feed+: {
        [resourceLabel]+: {
          asset_names: value,
        },
      },
    },
  },
  '#withAssetTypes':: d.fn(help='`google-beta.list.withAssetTypes` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the asset_types field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `asset_types` field.\n', args=[]),
  withAssetTypes(resourceLabel, value): {
    resource+: {
      google_cloud_asset_organization_feed+: {
        [resourceLabel]+: {
          asset_types: value,
        },
      },
    },
  },
  '#withBillingProject':: d.fn(help='`google-beta.string.withBillingProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the billing_project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `billing_project` field.\n', args=[]),
  withBillingProject(resourceLabel, value): {
    resource+: {
      google_cloud_asset_organization_feed+: {
        [resourceLabel]+: {
          billing_project: value,
        },
      },
    },
  },
  '#withCondition':: d.fn(help='`google-beta.list[obj].withCondition` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the condition field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withConditionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `condition` field.\n', args=[]),
  withCondition(resourceLabel, value): {
    resource+: {
      google_cloud_asset_organization_feed+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  '#withConditionMixin':: d.fn(help='`google-beta.list[obj].withConditionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the condition field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withCondition](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `condition` field.\n', args=[]),
  withConditionMixin(resourceLabel, value): {
    resource+: {
      google_cloud_asset_organization_feed+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withContentType':: d.fn(help='`google-beta.string.withContentType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the content_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `content_type` field.\n', args=[]),
  withContentType(resourceLabel, value): {
    resource+: {
      google_cloud_asset_organization_feed+: {
        [resourceLabel]+: {
          content_type: value,
        },
      },
    },
  },
  '#withFeedId':: d.fn(help='`google-beta.string.withFeedId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the feed_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `feed_id` field.\n', args=[]),
  withFeedId(resourceLabel, value): {
    resource+: {
      google_cloud_asset_organization_feed+: {
        [resourceLabel]+: {
          feed_id: value,
        },
      },
    },
  },
  '#withFeedOutputConfig':: d.fn(help='`google-beta.list[obj].withFeedOutputConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the feed_output_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withFeedOutputConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `feed_output_config` field.\n', args=[]),
  withFeedOutputConfig(resourceLabel, value): {
    resource+: {
      google_cloud_asset_organization_feed+: {
        [resourceLabel]+: {
          feed_output_config: value,
        },
      },
    },
  },
  '#withFeedOutputConfigMixin':: d.fn(help='`google-beta.list[obj].withFeedOutputConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the feed_output_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withFeedOutputConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `feed_output_config` field.\n', args=[]),
  withFeedOutputConfigMixin(resourceLabel, value): {
    resource+: {
      google_cloud_asset_organization_feed+: {
        [resourceLabel]+: {
          feed_output_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withOrgId':: d.fn(help='`google-beta.string.withOrgId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the org_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `org_id` field.\n', args=[]),
  withOrgId(resourceLabel, value): {
    resource+: {
      google_cloud_asset_organization_feed+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloud_asset_organization_feed+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloud_asset_organization_feed+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
