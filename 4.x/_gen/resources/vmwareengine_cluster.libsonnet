local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_vmwareengine_cluster', url='', help='`google_vmwareengine_cluster` represents the `google-beta_google_vmwareengine_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_vmwareengine_cluster.new` injects a new `google-beta_google_vmwareengine_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_vmwareengine_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_vmwareengine_cluster` using the reference:\n\n    $._ref.google-beta_google_vmwareengine_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_vmwareengine_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `name` (`string`): The ID of the Cluster.\n  - `parent` (`string`): The resource name of the private cloud to create a new cluster in.\nResource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.\nFor example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud\n  - `node_type_configs` (`list[obj]`): The map of cluster node types in this cluster,\nwhere the key is canonical identifier of the node type (corresponds to the NodeType). When `null`, the `node_type_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vmwareengine_cluster.node_type_configs.new](#fn-node_type_configsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vmwareengine_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    parent,
    node_type_configs=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vmwareengine_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      node_type_configs=node_type_configs,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_vmwareengine_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `google_vmwareengine_cluster`\nTerraform resource.\n\nUnlike [google-beta.google_vmwareengine_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): The ID of the Cluster.\n  - `parent` (`string`): The resource name of the private cloud to create a new cluster in.\nResource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.\nFor example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud\n  - `node_type_configs` (`list[obj]`): The map of cluster node types in this cluster,\nwhere the key is canonical identifier of the node type (corresponds to the NodeType). When `null`, the `node_type_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vmwareengine_cluster.node_type_configs.new](#fn-node_type_configsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vmwareengine_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_vmwareengine_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    parent,
    node_type_configs=null,
    timeouts=null
  ):: std.prune(a={
    name: name,
    node_type_configs: node_type_configs,
    parent: parent,
    timeouts: timeouts,
  }),
  node_type_configs:: {
    '#new':: d.fn(help='\n`google-beta.google_vmwareengine_cluster.node_type_configs.new` constructs a new object with attributes and blocks configured for the `node_type_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `custom_core_count` (`number`): Customized number of cores available to each node of the type.\nThis number must always be one of &#39;nodeType.availableCustomCoreCounts&#39;.\nIf zero is provided max value from &#39;nodeType.availableCustomCoreCounts&#39; will be used.\nOnce the customer is created then corecount cannot be changed. When `null`, the `custom_core_count` field will be omitted from the resulting object.\n  - `node_count` (`number`): The number of nodes of this type in the cluster.\n  - `node_type_id` (`string`): Set the `node_type_id` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_type_configs` sub block.\n', args=[]),
    new(
      node_count,
      node_type_id,
      custom_core_count=null
    ):: std.prune(a={
      custom_core_count: custom_core_count,
      node_count: node_count,
      node_type_id: node_type_id,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_vmwareengine_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vmwareengine_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNodeTypeConfigs':: d.fn(help='`google-beta.list[obj].withNodeTypeConfigs` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_type_configs field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withNodeTypeConfigsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_type_configs` field.\n', args=[]),
  withNodeTypeConfigs(resourceLabel, value): {
    resource+: {
      google_vmwareengine_cluster+: {
        [resourceLabel]+: {
          node_type_configs: value,
        },
      },
    },
  },
  '#withNodeTypeConfigsMixin':: d.fn(help='`google-beta.list[obj].withNodeTypeConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_type_configs field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withNodeTypeConfigs](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_type_configs` field.\n', args=[]),
  withNodeTypeConfigsMixin(resourceLabel, value): {
    resource+: {
      google_vmwareengine_cluster+: {
        [resourceLabel]+: {
          node_type_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google-beta.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_vmwareengine_cluster+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vmwareengine_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vmwareengine_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
