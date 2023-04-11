local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_workstations_workstation_cluster', url='', help='`google_workstations_workstation_cluster` represents the `google-beta_google_workstations_workstation_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_workstations_workstation_cluster.new` injects a new `google-beta_google_workstations_workstation_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_workstations_workstation_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_workstations_workstation_cluster` using the reference:\n\n    $._ref.google-beta_google_workstations_workstation_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_workstations_workstation_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Client-specified annotations. This is distinct from labels. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `display_name` (`string`): Human-readable name for this resource. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the workstation cluster should reside. When `null`, the `location` field will be omitted from the resulting object.\n  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. \nIt is specified in the following form: \u0026#34;projects/{projectNumber}/global/networks/{network_id}\u0026#34;.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): Name of the Compute Engine subnetwork in which instances associated with this cluster will be created. \nMust be part of the subnetwork specified for this cluster.\n  - `workstation_cluster_id` (`string`): The ID of the workstation cluster.\n  - `private_cluster_config` (`list[obj]`): Configuration for private cluster. When `null`, the `private_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_cluster.private_cluster_config.new](#fn-private_cluster_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    network,
    subnetwork,
    workstation_cluster_id,
    annotations=null,
    display_name=null,
    labels=null,
    location=null,
    private_cluster_config=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_workstations_workstation_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      display_name=display_name,
      labels=labels,
      location=location,
      network=network,
      private_cluster_config=private_cluster_config,
      project=project,
      subnetwork=subnetwork,
      timeouts=timeouts,
      workstation_cluster_id=workstation_cluster_id
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_workstations_workstation_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `google_workstations_workstation_cluster`\nTerraform resource.\n\nUnlike [google-beta.google_workstations_workstation_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Client-specified annotations. This is distinct from labels. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `display_name` (`string`): Human-readable name for this resource. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the workstation cluster should reside. When `null`, the `location` field will be omitted from the resulting object.\n  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. \nIt is specified in the following form: &#34;projects/{projectNumber}/global/networks/{network_id}&#34;.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): Name of the Compute Engine subnetwork in which instances associated with this cluster will be created. \nMust be part of the subnetwork specified for this cluster.\n  - `workstation_cluster_id` (`string`): The ID of the workstation cluster.\n  - `private_cluster_config` (`list[obj]`): Configuration for private cluster. When `null`, the `private_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_cluster.private_cluster_config.new](#fn-private_cluster_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_workstations_workstation_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    network,
    subnetwork,
    workstation_cluster_id,
    annotations=null,
    display_name=null,
    labels=null,
    location=null,
    private_cluster_config=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    display_name: display_name,
    labels: labels,
    location: location,
    network: network,
    private_cluster_config: private_cluster_config,
    project: project,
    subnetwork: subnetwork,
    timeouts: timeouts,
    workstation_cluster_id: workstation_cluster_id,
  }),
  private_cluster_config:: {
    '#new':: d.fn(help='\n`google-beta.google_workstations_workstation_cluster.private_cluster_config.new` constructs a new object with attributes and blocks configured for the `private_cluster_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_private_endpoint` (`bool`): Whether Workstations endpoint is private.\n\n**Returns**:\n  - An attribute object that represents the `private_cluster_config` sub block.\n', args=[]),
    new(
      enable_private_endpoint
    ):: std.prune(a={
      enable_private_endpoint: enable_private_endpoint,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_workstations_workstation_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAnnotations':: d.fn(help='`google-beta.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_cluster+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_cluster+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_cluster+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google-beta.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_cluster+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withPrivateClusterConfig':: d.fn(help='`google-beta.list[obj].withPrivateClusterConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the private_cluster_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withPrivateClusterConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `private_cluster_config` field.\n', args=[]),
  withPrivateClusterConfig(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_cluster+: {
        [resourceLabel]+: {
          private_cluster_config: value,
        },
      },
    },
  },
  '#withPrivateClusterConfigMixin':: d.fn(help='`google-beta.list[obj].withPrivateClusterConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the private_cluster_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withPrivateClusterConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `private_cluster_config` field.\n', args=[]),
  withPrivateClusterConfigMixin(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_cluster+: {
        [resourceLabel]+: {
          private_cluster_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSubnetwork':: d.fn(help='`google-beta.string.withSubnetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnetwork field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetwork(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_cluster+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWorkstationClusterId':: d.fn(help='`google-beta.string.withWorkstationClusterId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the workstation_cluster_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `workstation_cluster_id` field.\n', args=[]),
  withWorkstationClusterId(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_cluster+: {
        [resourceLabel]+: {
          workstation_cluster_id: value,
        },
      },
    },
  },
}
