local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_network_services_mesh', url='', help='`google_network_services_mesh` represents the `google-beta_google_network_services_mesh` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_network_services_mesh.new` injects a new `google-beta_google_network_services_mesh` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_network_services_mesh.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_network_services_mesh` using the reference:\n\n    $._ref.google-beta_google_network_services_mesh.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_network_services_mesh.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `interception_port` (`number`): Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the\nspecified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to\nbe redirected to this port regardless of its actual ip:port destination. If unset, a port\n\u0026#39;15001\u0026#39; is used as the interception port. This will is applicable only for sidecar proxy\ndeployments. When `null`, the `interception_port` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the Mesh resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Short name of the Mesh resource to be created.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_mesh.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    description=null,
    interception_port=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_services_mesh',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      interception_port=interception_port,
      labels=labels,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_network_services_mesh.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_services_mesh`\nTerraform resource.\n\nUnlike [google-beta.google_network_services_mesh.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `interception_port` (`number`): Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the\nspecified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to\nbe redirected to this port regardless of its actual ip:port destination. If unset, a port\n&#39;15001&#39; is used as the interception port. This will is applicable only for sidecar proxy\ndeployments. When `null`, the `interception_port` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the Mesh resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Short name of the Mesh resource to be created.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_mesh.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_services_mesh` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    description=null,
    interception_port=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    interception_port: interception_port,
    labels: labels,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_network_services_mesh.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_network_services_mesh+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withInterceptionPort':: d.fn(help='`google-beta.number.withInterceptionPort` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the interception_port field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `interception_port` field.\n', args=[]),
  withInterceptionPort(resourceLabel, value): {
    resource+: {
      google_network_services_mesh+: {
        [resourceLabel]+: {
          interception_port: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_services_mesh+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_services_mesh+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_services_mesh+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_services_mesh+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_services_mesh+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
