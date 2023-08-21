local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_backup_dr_management_server', url='', help='`google_backup_dr_management_server` represents the `google-beta_google_backup_dr_management_server` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  networks:: {
    '#new':: d.fn(help='\n`google-beta.google_backup_dr_management_server.networks.new` constructs a new object with attributes and blocks configured for the `networks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `network` (`string`): Network with format &#39;projects/{{project_id}}/global/networks/{{network_id}}&#39;\n  - `peering_mode` (`string`): Type of Network peeringMode Default value: &#34;PRIVATE_SERVICE_ACCESS&#34; Possible values: [&#34;PRIVATE_SERVICE_ACCESS&#34;] When `null`, the `peering_mode` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `networks` sub block.\n', args=[]),
    new(
      network,
      peering_mode=null
    ):: std.prune(a={
      network: network,
      peering_mode: peering_mode,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_backup_dr_management_server.new` injects a new `google-beta_google_backup_dr_management_server` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_backup_dr_management_server.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_backup_dr_management_server` using the reference:\n\n    $._ref.google-beta_google_backup_dr_management_server.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_backup_dr_management_server.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `location` (`string`): The location for the management server (management console)\n  - `name` (`string`): The name of management server (management console)\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The type of management server (management console). Default value: \u0026#34;BACKUP_RESTORE\u0026#34; Possible values: [\u0026#34;BACKUP_RESTORE\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `networks` (`list[obj]`): Network details to create management server (management console). When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_backup_dr_management_server.networks.new](#fn-networksnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_backup_dr_management_server.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    networks=null,
    project=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_backup_dr_management_server',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      name=name,
      networks=networks,
      project=project,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_backup_dr_management_server.newAttrs` constructs a new object with attributes and blocks configured for the `google_backup_dr_management_server`\nTerraform resource.\n\nUnlike [google-beta.google_backup_dr_management_server.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): The location for the management server (management console)\n  - `name` (`string`): The name of management server (management console)\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The type of management server (management console). Default value: &#34;BACKUP_RESTORE&#34; Possible values: [&#34;BACKUP_RESTORE&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `networks` (`list[obj]`): Network details to create management server (management console). When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_backup_dr_management_server.networks.new](#fn-networksnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_backup_dr_management_server.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_backup_dr_management_server` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    networks=null,
    project=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    location: location,
    name: name,
    networks: networks,
    project: project,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_backup_dr_management_server.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_backup_dr_management_server+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_backup_dr_management_server+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworks':: d.fn(help='`google-beta.list[obj].withNetworks` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the networks field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withNetworksMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `networks` field.\n', args=[]),
  withNetworks(resourceLabel, value): {
    resource+: {
      google_backup_dr_management_server+: {
        [resourceLabel]+: {
          networks: value,
        },
      },
    },
  },
  '#withNetworksMixin':: d.fn(help='`google-beta.list[obj].withNetworksMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the networks field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withNetworks](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `networks` field.\n', args=[]),
  withNetworksMixin(resourceLabel, value): {
    resource+: {
      google_backup_dr_management_server+: {
        [resourceLabel]+: {
          networks+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_backup_dr_management_server+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_backup_dr_management_server+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_backup_dr_management_server+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google-beta.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_backup_dr_management_server+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
