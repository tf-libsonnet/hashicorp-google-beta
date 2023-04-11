local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_firebase_hosting_release', url='', help='`google_firebase_hosting_release` represents the `google-beta_google_firebase_hosting_release` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_firebase_hosting_release.new` injects a new `google-beta_google_firebase_hosting_release` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_firebase_hosting_release.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_firebase_hosting_release` using the reference:\n\n    $._ref.google-beta_google_firebase_hosting_release.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_firebase_hosting_release.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `channel_id` (`string`): The ID of the channel to which the release belongs. If not provided, the release will\nbelong to the default \u0026#34;live\u0026#34; channel When `null`, the `channel_id` field will be omitted from the resulting object.\n  - `message` (`string`): The deploy description when the release was created. The value can be up to 512 characters. When `null`, the `message` field will be omitted from the resulting object.\n  - `site_id` (`string`): Required. The ID of the site to which the release belongs.\n  - `type` (`string`): The type of the release; indicates what happened to the content of the site. There is no need to specify\n\u0026#39;DEPLOY\u0026#39; or \u0026#39;ROLLBACK\u0026#39; type if a \u0026#39;version_name\u0026#39; is provided.\nDEPLOY: A version was uploaded to Firebase Hosting and released. Output only.\nROLLBACK: The release points back to a previously deployed version. Output only.\nSITE_DISABLE: The release prevents the site from serving content. Firebase Hosting acts as if the site never existed Possible values: [\u0026#34;DEPLOY\u0026#34;, \u0026#34;ROLLBACK\u0026#34;, \u0026#34;SITE_DISABLE\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `version_name` (`string`): The unique identifier for a version, in the format: sites/SITE_ID/versions/VERSION_ID.\nThe content of the version specified will be actively displayed on the appropriate URL.\nThe Version must belong to the same site as in the \u0026#39;site_id\u0026#39;.\nThis parameter must be empty if the \u0026#39;type\u0026#39; of the release is \u0026#39;SITE_DISABLE\u0026#39;. When `null`, the `version_name` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_release.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    site_id,
    channel_id=null,
    message=null,
    timeouts=null,
    type=null,
    version_name=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_hosting_release',
    label=resourceLabel,
    attrs=self.newAttrs(
      channel_id=channel_id,
      message=message,
      site_id=site_id,
      timeouts=timeouts,
      type=type,
      version_name=version_name
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_firebase_hosting_release.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_hosting_release`\nTerraform resource.\n\nUnlike [google-beta.google_firebase_hosting_release.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `channel_id` (`string`): The ID of the channel to which the release belongs. If not provided, the release will\nbelong to the default &#34;live&#34; channel When `null`, the `channel_id` field will be omitted from the resulting object.\n  - `message` (`string`): The deploy description when the release was created. The value can be up to 512 characters. When `null`, the `message` field will be omitted from the resulting object.\n  - `site_id` (`string`): Required. The ID of the site to which the release belongs.\n  - `type` (`string`): The type of the release; indicates what happened to the content of the site. There is no need to specify\n&#39;DEPLOY&#39; or &#39;ROLLBACK&#39; type if a &#39;version_name&#39; is provided.\nDEPLOY: A version was uploaded to Firebase Hosting and released. Output only.\nROLLBACK: The release points back to a previously deployed version. Output only.\nSITE_DISABLE: The release prevents the site from serving content. Firebase Hosting acts as if the site never existed Possible values: [&#34;DEPLOY&#34;, &#34;ROLLBACK&#34;, &#34;SITE_DISABLE&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `version_name` (`string`): The unique identifier for a version, in the format: sites/SITE_ID/versions/VERSION_ID.\nThe content of the version specified will be actively displayed on the appropriate URL.\nThe Version must belong to the same site as in the &#39;site_id&#39;.\nThis parameter must be empty if the &#39;type&#39; of the release is &#39;SITE_DISABLE&#39;. When `null`, the `version_name` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_release.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_firebase_hosting_release` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    site_id,
    channel_id=null,
    message=null,
    timeouts=null,
    type=null,
    version_name=null
  ):: std.prune(a={
    channel_id: channel_id,
    message: message,
    site_id: site_id,
    timeouts: timeouts,
    type: type,
    version_name: version_name,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_firebase_hosting_release.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withChannelId':: d.fn(help='`google-beta.string.withChannelId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the channel_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `channel_id` field.\n', args=[]),
  withChannelId(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_release+: {
        [resourceLabel]+: {
          channel_id: value,
        },
      },
    },
  },
  '#withMessage':: d.fn(help='`google-beta.string.withMessage` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the message field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `message` field.\n', args=[]),
  withMessage(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_release+: {
        [resourceLabel]+: {
          message: value,
        },
      },
    },
  },
  '#withSiteId':: d.fn(help='`google-beta.string.withSiteId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the site_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `site_id` field.\n', args=[]),
  withSiteId(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_release+: {
        [resourceLabel]+: {
          site_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_release+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_release+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google-beta.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_release+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  '#withVersionName':: d.fn(help='`google-beta.string.withVersionName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the version_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `version_name` field.\n', args=[]),
  withVersionName(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_release+: {
        [resourceLabel]+: {
          version_name: value,
        },
      },
    },
  },
}
