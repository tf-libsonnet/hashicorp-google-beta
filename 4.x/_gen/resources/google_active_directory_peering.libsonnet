local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_active_directory_peering', url='', help='`google_active_directory_peering` represents the `google-beta_google_active_directory_peering` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_active_directory_peering.new` injects a new `google-beta_google_active_directory_peering` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_active_directory_peering.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_active_directory_peering` using the reference:\n\n    $._ref.google-beta_google_active_directory_peering.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_active_directory_peering.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `authorized_network` (`string`): The full names of the Google Compute Engine networks to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.\n  - `domain_resource` (`string`): Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form projects/{projectId}/locations/global/domains/{domainName}\n  - `labels` (`obj`): Resource labels that can contain user-provided metadata When `null`, the `labels` field will be omitted from the resulting object.\n  - `peering_id` (`string`): Set the `peering_id` field on the resulting resource block.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `status` (`string`): The current state of this Peering. When `null`, the `status` field will be omitted from the resulting object.\n  - `status_message` (`string`): Additional information about the current status of this peering, if available. When `null`, the `status_message` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_active_directory_peering.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    authorized_network,
    domain_resource,
    peering_id,
    labels=null,
    project=null,
    status=null,
    status_message=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_active_directory_peering',
    label=resourceLabel,
    attrs=self.newAttrs(
      authorized_network=authorized_network,
      domain_resource=domain_resource,
      labels=labels,
      peering_id=peering_id,
      project=project,
      status=status,
      status_message=status_message,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_active_directory_peering.newAttrs` constructs a new object with attributes and blocks configured for the `google_active_directory_peering`\nTerraform resource.\n\nUnlike [google-beta.google_active_directory_peering.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `authorized_network` (`string`): The full names of the Google Compute Engine networks to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.\n  - `domain_resource` (`string`): Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form projects/{projectId}/locations/global/domains/{domainName}\n  - `labels` (`obj`): Resource labels that can contain user-provided metadata When `null`, the `labels` field will be omitted from the resulting object.\n  - `peering_id` (`string`): Set the `peering_id` field on the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `status` (`string`): The current state of this Peering. When `null`, the `status` field will be omitted from the resulting object.\n  - `status_message` (`string`): Additional information about the current status of this peering, if available. When `null`, the `status_message` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_active_directory_peering.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_active_directory_peering` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    authorized_network,
    domain_resource,
    peering_id,
    labels=null,
    project=null,
    status=null,
    status_message=null,
    timeouts=null
  ):: std.prune(a={
    authorized_network: authorized_network,
    domain_resource: domain_resource,
    labels: labels,
    peering_id: peering_id,
    project: project,
    status: status,
    status_message: status_message,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_active_directory_peering.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAuthorizedNetwork':: d.fn(help='`google-beta.string.withAuthorizedNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the authorized_network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `authorized_network` field.\n', args=[]),
  withAuthorizedNetwork(resourceLabel, value): {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          authorized_network: value,
        },
      },
    },
  },
  '#withDomainResource':: d.fn(help='`google-beta.string.withDomainResource` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the domain_resource field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `domain_resource` field.\n', args=[]),
  withDomainResource(resourceLabel, value): {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          domain_resource: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withPeeringId':: d.fn(help='`google-beta.string.withPeeringId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peering_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peering_id` field.\n', args=[]),
  withPeeringId(resourceLabel, value): {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          peering_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withStatus':: d.fn(help='`google-beta.string.withStatus` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the status field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `status` field.\n', args=[]),
  withStatus(resourceLabel, value): {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          status: value,
        },
      },
    },
  },
  '#withStatusMessage':: d.fn(help='`google-beta.string.withStatusMessage` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the status_message field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `status_message` field.\n', args=[]),
  withStatusMessage(resourceLabel, value): {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          status_message: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
