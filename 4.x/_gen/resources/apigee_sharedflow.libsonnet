local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_apigee_sharedflow', url='', help='`google_apigee_sharedflow` represents the `google-beta_google_apigee_sharedflow` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_apigee_sharedflow.new` injects a new `google-beta_google_apigee_sharedflow` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_apigee_sharedflow.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_apigee_sharedflow` using the reference:\n\n    $._ref.google-beta_google_apigee_sharedflow.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_apigee_sharedflow.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `config_bundle` (`string`): Path to the config zip bundle\n  - `detect_md5hash` (`string`): A hash of local config bundle in string, user needs to use a Terraform Hash function of their choice. A change in hash will trigger an update. When `null`, the `detect_md5hash` field will be omitted from the resulting object.\n  - `name` (`string`): The ID of the shared flow.\n  - `org_id` (`string`): The Apigee Organization name associated with the Apigee instance.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_apigee_sharedflow.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    config_bundle,
    name,
    org_id,
    detect_md5hash=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_sharedflow',
    label=resourceLabel,
    attrs=self.newAttrs(
      config_bundle=config_bundle,
      detect_md5hash=detect_md5hash,
      name=name,
      org_id=org_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_apigee_sharedflow.newAttrs` constructs a new object with attributes and blocks configured for the `google_apigee_sharedflow`\nTerraform resource.\n\nUnlike [google-beta.google_apigee_sharedflow.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `config_bundle` (`string`): Path to the config zip bundle\n  - `detect_md5hash` (`string`): A hash of local config bundle in string, user needs to use a Terraform Hash function of their choice. A change in hash will trigger an update. When `null`, the `detect_md5hash` field will be omitted from the resulting object.\n  - `name` (`string`): The ID of the shared flow.\n  - `org_id` (`string`): The Apigee Organization name associated with the Apigee instance.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_apigee_sharedflow.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_apigee_sharedflow` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    config_bundle,
    name,
    org_id,
    detect_md5hash=null,
    timeouts=null
  ):: std.prune(a={
    config_bundle: config_bundle,
    detect_md5hash: detect_md5hash,
    name: name,
    org_id: org_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_apigee_sharedflow.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withConfigBundle':: d.fn(help='`google-beta.string.withConfigBundle` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the config_bundle field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `config_bundle` field.\n', args=[]),
  withConfigBundle(resourceLabel, value): {
    resource+: {
      google_apigee_sharedflow+: {
        [resourceLabel]+: {
          config_bundle: value,
        },
      },
    },
  },
  '#withDetectMd5Hash':: d.fn(help='`google-beta.string.withDetectMd5Hash` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the detect_md5hash field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `detect_md5hash` field.\n', args=[]),
  withDetectMd5Hash(resourceLabel, value): {
    resource+: {
      google_apigee_sharedflow+: {
        [resourceLabel]+: {
          detect_md5hash: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_apigee_sharedflow+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withOrgId':: d.fn(help='`google-beta.string.withOrgId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the org_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `org_id` field.\n', args=[]),
  withOrgId(resourceLabel, value): {
    resource+: {
      google_apigee_sharedflow+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_apigee_sharedflow+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_apigee_sharedflow+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
