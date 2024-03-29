local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_network_security_tls_inspection_policy', url='', help='`google_network_security_tls_inspection_policy` represents the `google-beta_google_network_security_tls_inspection_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_network_security_tls_inspection_policy.new` injects a new `google-beta_google_network_security_tls_inspection_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_network_security_tls_inspection_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_network_security_tls_inspection_policy` using the reference:\n\n    $._ref.google-beta_google_network_security_tls_inspection_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_network_security_tls_inspection_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `ca_pool` (`string`): A CA pool resource used to issue interception certificates.\n  - `description` (`string`): Free-text description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `exclude_public_ca_set` (`bool`): If FALSE (the default), use our default set of public CAs in addition to any CAs specified in trustConfig. These public CAs are currently based on the Mozilla Root Program and are subject to change over time. If TRUE, do not accept our default set of public CAs. Only CAs specified in trustConfig will be accepted. When `null`, the `exclude_public_ca_set` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the tls inspection policy. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Short name of the TlsInspectionPolicy resource to be created.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_tls_inspection_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    ca_pool,
    name,
    description=null,
    exclude_public_ca_set=null,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_security_tls_inspection_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      ca_pool=ca_pool,
      description=description,
      exclude_public_ca_set=exclude_public_ca_set,
      location=location,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_network_security_tls_inspection_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_security_tls_inspection_policy`\nTerraform resource.\n\nUnlike [google-beta.google_network_security_tls_inspection_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `ca_pool` (`string`): A CA pool resource used to issue interception certificates.\n  - `description` (`string`): Free-text description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `exclude_public_ca_set` (`bool`): If FALSE (the default), use our default set of public CAs in addition to any CAs specified in trustConfig. These public CAs are currently based on the Mozilla Root Program and are subject to change over time. If TRUE, do not accept our default set of public CAs. Only CAs specified in trustConfig will be accepted. When `null`, the `exclude_public_ca_set` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the tls inspection policy. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Short name of the TlsInspectionPolicy resource to be created.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_tls_inspection_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_security_tls_inspection_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    ca_pool,
    name,
    description=null,
    exclude_public_ca_set=null,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    ca_pool: ca_pool,
    description: description,
    exclude_public_ca_set: exclude_public_ca_set,
    location: location,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_network_security_tls_inspection_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCaPool':: d.fn(help='`google-beta.string.withCaPool` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ca_pool field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ca_pool` field.\n', args=[]),
  withCaPool(resourceLabel, value): {
    resource+: {
      google_network_security_tls_inspection_policy+: {
        [resourceLabel]+: {
          ca_pool: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_network_security_tls_inspection_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withExcludePublicCaSet':: d.fn(help='`google-beta.bool.withExcludePublicCaSet` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the exclude_public_ca_set field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `exclude_public_ca_set` field.\n', args=[]),
  withExcludePublicCaSet(resourceLabel, value): {
    resource+: {
      google_network_security_tls_inspection_policy+: {
        [resourceLabel]+: {
          exclude_public_ca_set: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_network_security_tls_inspection_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_security_tls_inspection_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_security_tls_inspection_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_security_tls_inspection_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_security_tls_inspection_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
