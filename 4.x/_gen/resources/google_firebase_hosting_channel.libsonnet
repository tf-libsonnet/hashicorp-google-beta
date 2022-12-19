local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_firebase_hosting_channel', url='', help='`google_firebase_hosting_channel` represents the `google-beta_google_firebase_hosting_channel` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_firebase_hosting_channel.new` injects a new `google-beta_google_firebase_hosting_channel` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_firebase_hosting_channel.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_firebase_hosting_channel` using the reference:\n\n    $._ref.google-beta_google_firebase_hosting_channel.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_firebase_hosting_channel.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `channel_id` (`string`): Required. Immutable. A unique ID within the site that identifies the channel.\n  - `expire_time` (`string`): The time at which the channel will be automatically deleted. If null, the channel\nwill not be automatically deleted. This field is present in the output whether it\u0026#39;s\nset directly or via the \u0026#39;ttl\u0026#39; field. When `null`, the `expire_time` field will be omitted from the resulting object.\n  - `labels` (`obj`): Text labels used for extra metadata and/or filtering When `null`, the `labels` field will be omitted from the resulting object.\n  - `retained_release_count` (`number`): The number of previous releases to retain on the channel for rollback or other\npurposes. Must be a number between 1-100. Defaults to 10 for new channels. When `null`, the `retained_release_count` field will be omitted from the resulting object.\n  - `site_id` (`string`): Required. The ID of the site in which to create this channel.\n  - `ttl` (`string`): Input only. A time-to-live for this channel. Sets \u0026#39;expire_time\u0026#39; to the provided\nduration past the time of the request. A duration in seconds with up to nine fractional\ndigits, terminated by \u0026#39;s\u0026#39;. Example: \u0026#34;86400s\u0026#34; (one day). When `null`, the `ttl` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_channel.timeouts.new](#fn-googlefirebasehostingchanneltimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    channel_id,
    site_id,
    expire_time=null,
    labels=null,
    retained_release_count=null,
    timeouts=null,
    ttl=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_hosting_channel',
    label=resourceLabel,
    attrs=self.newAttrs(
      channel_id=channel_id,
      expire_time=expire_time,
      labels=labels,
      retained_release_count=retained_release_count,
      site_id=site_id,
      timeouts=timeouts,
      ttl=ttl
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_firebase_hosting_channel.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_hosting_channel`\nTerraform resource.\n\nUnlike [google-beta.google_firebase_hosting_channel.new](#fn-googlefirebasehostingchannelnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `channel_id` (`string`): Required. Immutable. A unique ID within the site that identifies the channel.\n  - `expire_time` (`string`): The time at which the channel will be automatically deleted. If null, the channel\nwill not be automatically deleted. This field is present in the output whether it&#39;s\nset directly or via the &#39;ttl&#39; field. When `null`, the `expire_time` field will be omitted from the resulting object.\n  - `labels` (`obj`): Text labels used for extra metadata and/or filtering When `null`, the `labels` field will be omitted from the resulting object.\n  - `retained_release_count` (`number`): The number of previous releases to retain on the channel for rollback or other\npurposes. Must be a number between 1-100. Defaults to 10 for new channels. When `null`, the `retained_release_count` field will be omitted from the resulting object.\n  - `site_id` (`string`): Required. The ID of the site in which to create this channel.\n  - `ttl` (`string`): Input only. A time-to-live for this channel. Sets &#39;expire_time&#39; to the provided\nduration past the time of the request. A duration in seconds with up to nine fractional\ndigits, terminated by &#39;s&#39;. Example: &#34;86400s&#34; (one day). When `null`, the `ttl` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_channel.timeouts.new](#fn-googlefirebasehostingchanneltimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_firebase_hosting_channel` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    channel_id,
    site_id,
    expire_time=null,
    labels=null,
    retained_release_count=null,
    timeouts=null,
    ttl=null
  ):: std.prune(a={
    channel_id: channel_id,
    expire_time: expire_time,
    labels: labels,
    retained_release_count: retained_release_count,
    site_id: site_id,
    timeouts: timeouts,
    ttl: ttl,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_firebase_hosting_channel.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withChannelId':: d.fn(help='`google-beta.google_firebase_hosting_channel.withChannelId` constructs a mixin object that can be merged into the `google_firebase_hosting_channel`\nTerraform resource block to set or update the channel_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `channel_id` field.\n', args=[]),
  withChannelId(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          channel_id: value,
        },
      },
    },
  },
  '#withExpireTime':: d.fn(help='`google-beta.google_firebase_hosting_channel.withExpireTime` constructs a mixin object that can be merged into the `google_firebase_hosting_channel`\nTerraform resource block to set or update the expire_time field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `expire_time` field.\n', args=[]),
  withExpireTime(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          expire_time: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.google_firebase_hosting_channel.withLabels` constructs a mixin object that can be merged into the `google_firebase_hosting_channel`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withRetainedReleaseCount':: d.fn(help='`google-beta.google_firebase_hosting_channel.withRetainedReleaseCount` constructs a mixin object that can be merged into the `google_firebase_hosting_channel`\nTerraform resource block to set or update the retained_release_count field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `retained_release_count` field.\n', args=[]),
  withRetainedReleaseCount(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          retained_release_count: value,
        },
      },
    },
  },
  '#withSiteId':: d.fn(help='`google-beta.google_firebase_hosting_channel.withSiteId` constructs a mixin object that can be merged into the `google_firebase_hosting_channel`\nTerraform resource block to set or update the site_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `site_id` field.\n', args=[]),
  withSiteId(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          site_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.google_firebase_hosting_channel.withTimeouts` constructs a mixin object that can be merged into the `google_firebase_hosting_channel`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.google_firebase_hosting_channel.withTimeoutsMixin` constructs a mixin object that can be merged into the `google_firebase_hosting_channel`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.google_firebase_hosting_channel.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTtl':: d.fn(help='`google-beta.google_firebase_hosting_channel.withTtl` constructs a mixin object that can be merged into the `google_firebase_hosting_channel`\nTerraform resource block to set or update the ttl field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `ttl` field.\n', args=[]),
  withTtl(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          ttl: value,
        },
      },
    },
  },
}
