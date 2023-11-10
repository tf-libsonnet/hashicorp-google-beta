local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_tpu_v2_vm', url='', help='`google_tpu_v2_vm` represents the `google-beta_google_tpu_v2_vm` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  accelerator_config:: {
    '#new':: d.fn(help='\n`google-beta.google_tpu_v2_vm.accelerator_config.new` constructs a new object with attributes and blocks configured for the `accelerator_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `topology` (`string`): Topology of TPU in chips.\n  - `type` (`string`): Type of TPU. Possible values: [&#34;V2&#34;, &#34;V3&#34;, &#34;V4&#34;]\n\n**Returns**:\n  - An attribute object that represents the `accelerator_config` sub block.\n', args=[]),
    new(
      topology,
      type
    ):: std.prune(a={
      topology: topology,
      type: type,
    }),
  },
  data_disks:: {
    '#new':: d.fn(help='\n`google-beta.google_tpu_v2_vm.data_disks.new` constructs a new object with attributes and blocks configured for the `data_disks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mode` (`string`): The mode in which to attach this disk. If not specified, the default is READ_WRITE\nmode. Only applicable to dataDisks. Default value: &#34;READ_WRITE&#34; Possible values: [&#34;READ_WRITE&#34;, &#34;READ_ONLY&#34;] When `null`, the `mode` field will be omitted from the resulting object.\n  - `source_disk` (`string`): Specifies the full path to an existing disk. For example:\n&#34;projects/my-project/zones/us-central1-c/disks/my-disk&#34;.\n\n**Returns**:\n  - An attribute object that represents the `data_disks` sub block.\n', args=[]),
    new(
      source_disk,
      mode=null
    ):: std.prune(a={
      mode: mode,
      source_disk: source_disk,
    }),
  },
  network_config:: {
    '#new':: d.fn(help='\n`google-beta.google_tpu_v2_vm.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `can_ip_forward` (`bool`): Allows the TPU node to send and receive packets with non-matching destination or source\nIPs. This is required if you plan to use the TPU workers to forward routes. When `null`, the `can_ip_forward` field will be omitted from the resulting object.\n  - `enable_external_ips` (`bool`): Indicates that external IP addresses would be associated with the TPU workers. If set to\nfalse, the specified subnetwork or network should have Private Google Access enabled. When `null`, the `enable_external_ips` field will be omitted from the resulting object.\n  - `network` (`string`): The name of the network for the TPU node. It must be a preexisting Google Compute Engine\nnetwork. If both network and subnetwork are specified, the given subnetwork must belong\nto the given network. If network is not specified, it will be looked up from the\nsubnetwork if one is provided, or otherwise use &#34;default&#34;. When `null`, the `network` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The name of the subnetwork for the TPU node. It must be a preexisting Google Compute\nEngine subnetwork. If both network and subnetwork are specified, the given subnetwork\nmust belong to the given network. If subnetwork is not specified, the subnetwork with the\nsame name as the network will be used. When `null`, the `subnetwork` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `network_config` sub block.\n', args=[]),
    new(
      can_ip_forward=null,
      enable_external_ips=null,
      network=null,
      subnetwork=null
    ):: std.prune(a={
      can_ip_forward: can_ip_forward,
      enable_external_ips: enable_external_ips,
      network: network,
      subnetwork: subnetwork,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_tpu_v2_vm.new` injects a new `google-beta_google_tpu_v2_vm` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_tpu_v2_vm.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_tpu_v2_vm` using the reference:\n\n    $._ref.google-beta_google_tpu_v2_vm.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_tpu_v2_vm.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `accelerator_type` (`string`): TPU accelerator type for the TPU. \u0026#39;accelerator_type\u0026#39; cannot be used at the same time as\n\u0026#39;accelerator_config\u0026#39;. If neither is specified, \u0026#39;accelerator_type\u0026#39; defaults to \u0026#39;v2-8\u0026#39;. When `null`, the `accelerator_type` field will be omitted from the resulting object.\n  - `cidr_block` (`string`): The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must\nbe a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger\nblock would be wasteful (a node can only consume one IP address). Errors will occur if the\nCIDR block has already been used for a currently existing TPU node, the CIDR block conflicts\nwith any subnetworks in the user\u0026#39;s provided network, or the provided network is peered with\nanother network that is using that CIDR block. When `null`, the `cidr_block` field will be omitted from the resulting object.\n  - `description` (`string`): Text description of the TPU. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user-provided metadata.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `metadata` (`obj`): Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `name` (`string`): The immutable name of the TPU.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `runtime_version` (`string`): Runtime version for the TPU.\n  - `tags` (`list`): Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls. When `null`, the `tags` field will be omitted from the resulting object.\n  - `zone` (`string`): The GCP location for the TPU. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.\n  - `accelerator_config` (`list[obj]`): The AccleratorConfig for the TPU Node. \u0026#39;accelerator_config\u0026#39; cannot be used at the same time\nas \u0026#39;accelerator_type\u0026#39;. If neither is specified, \u0026#39;accelerator_type\u0026#39; defaults to \u0026#39;v2-8\u0026#39;. When `null`, the `accelerator_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.accelerator_config.new](#fn-accelerator_confignew) constructor.\n  - `data_disks` (`list[obj]`): The additional data disks for the Node. When `null`, the `data_disks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.data_disks.new](#fn-data_disksnew) constructor.\n  - `network_config` (`list[obj]`): Network configurations for the TPU node. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.network_config.new](#fn-network_confignew) constructor.\n  - `scheduling_config` (`list[obj]`): The scheduling options for this node. When `null`, the `scheduling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.scheduling_config.new](#fn-scheduling_confignew) constructor.\n  - `service_account` (`list[obj]`): The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is\nspecified, the default compute service account will be used. When `null`, the `service_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.service_account.new](#fn-service_accountnew) constructor.\n  - `shielded_instance_config` (`list[obj]`): Shielded Instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.shielded_instance_config.new](#fn-shielded_instance_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    runtime_version,
    accelerator_config=null,
    accelerator_type=null,
    cidr_block=null,
    data_disks=null,
    description=null,
    labels=null,
    metadata=null,
    network_config=null,
    project=null,
    scheduling_config=null,
    service_account=null,
    shielded_instance_config=null,
    tags=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_tpu_v2_vm',
    label=resourceLabel,
    attrs=self.newAttrs(
      accelerator_config=accelerator_config,
      accelerator_type=accelerator_type,
      cidr_block=cidr_block,
      data_disks=data_disks,
      description=description,
      labels=labels,
      metadata=metadata,
      name=name,
      network_config=network_config,
      project=project,
      runtime_version=runtime_version,
      scheduling_config=scheduling_config,
      service_account=service_account,
      shielded_instance_config=shielded_instance_config,
      tags=tags,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_tpu_v2_vm.newAttrs` constructs a new object with attributes and blocks configured for the `google_tpu_v2_vm`\nTerraform resource.\n\nUnlike [google-beta.google_tpu_v2_vm.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `accelerator_type` (`string`): TPU accelerator type for the TPU. &#39;accelerator_type&#39; cannot be used at the same time as\n&#39;accelerator_config&#39;. If neither is specified, &#39;accelerator_type&#39; defaults to &#39;v2-8&#39;. When `null`, the `accelerator_type` field will be omitted from the resulting object.\n  - `cidr_block` (`string`): The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must\nbe a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger\nblock would be wasteful (a node can only consume one IP address). Errors will occur if the\nCIDR block has already been used for a currently existing TPU node, the CIDR block conflicts\nwith any subnetworks in the user&#39;s provided network, or the provided network is peered with\nanother network that is using that CIDR block. When `null`, the `cidr_block` field will be omitted from the resulting object.\n  - `description` (`string`): Text description of the TPU. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user-provided metadata.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `metadata` (`obj`): Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `name` (`string`): The immutable name of the TPU.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `runtime_version` (`string`): Runtime version for the TPU.\n  - `tags` (`list`): Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls. When `null`, the `tags` field will be omitted from the resulting object.\n  - `zone` (`string`): The GCP location for the TPU. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.\n  - `accelerator_config` (`list[obj]`): The AccleratorConfig for the TPU Node. &#39;accelerator_config&#39; cannot be used at the same time\nas &#39;accelerator_type&#39;. If neither is specified, &#39;accelerator_type&#39; defaults to &#39;v2-8&#39;. When `null`, the `accelerator_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.accelerator_config.new](#fn-accelerator_confignew) constructor.\n  - `data_disks` (`list[obj]`): The additional data disks for the Node. When `null`, the `data_disks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.data_disks.new](#fn-data_disksnew) constructor.\n  - `network_config` (`list[obj]`): Network configurations for the TPU node. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.network_config.new](#fn-network_confignew) constructor.\n  - `scheduling_config` (`list[obj]`): The scheduling options for this node. When `null`, the `scheduling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.scheduling_config.new](#fn-scheduling_confignew) constructor.\n  - `service_account` (`list[obj]`): The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is\nspecified, the default compute service account will be used. When `null`, the `service_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.service_account.new](#fn-service_accountnew) constructor.\n  - `shielded_instance_config` (`list[obj]`): Shielded Instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.shielded_instance_config.new](#fn-shielded_instance_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_tpu_v2_vm` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    runtime_version,
    accelerator_config=null,
    accelerator_type=null,
    cidr_block=null,
    data_disks=null,
    description=null,
    labels=null,
    metadata=null,
    network_config=null,
    project=null,
    scheduling_config=null,
    service_account=null,
    shielded_instance_config=null,
    tags=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    accelerator_config: accelerator_config,
    accelerator_type: accelerator_type,
    cidr_block: cidr_block,
    data_disks: data_disks,
    description: description,
    labels: labels,
    metadata: metadata,
    name: name,
    network_config: network_config,
    project: project,
    runtime_version: runtime_version,
    scheduling_config: scheduling_config,
    service_account: service_account,
    shielded_instance_config: shielded_instance_config,
    tags: tags,
    timeouts: timeouts,
    zone: zone,
  }),
  scheduling_config:: {
    '#new':: d.fn(help='\n`google-beta.google_tpu_v2_vm.scheduling_config.new` constructs a new object with attributes and blocks configured for the `scheduling_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `preemptible` (`bool`): Defines whether the node is preemptible. When `null`, the `preemptible` field will be omitted from the resulting object.\n  - `reserved` (`bool`): Whether the node is created under a reservation. When `null`, the `reserved` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `scheduling_config` sub block.\n', args=[]),
    new(
      preemptible=null,
      reserved=null
    ):: std.prune(a={
      preemptible: preemptible,
      reserved: reserved,
    }),
  },
  service_account:: {
    '#new':: d.fn(help='\n`google-beta.google_tpu_v2_vm.service_account.new` constructs a new object with attributes and blocks configured for the `service_account`\nTerraform sub block.\n\n\n\n**Args**:\n  - `email` (`string`): Email address of the service account. If empty, default Compute service account will be used. When `null`, the `email` field will be omitted from the resulting object.\n  - `scope` (`list`): The list of scopes to be made available for this service account. If empty, access to all\nCloud APIs will be allowed. When `null`, the `scope` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `service_account` sub block.\n', args=[]),
    new(
      email=null,
      scope=null
    ):: std.prune(a={
      email: email,
      scope: scope,
    }),
  },
  shielded_instance_config:: {
    '#new':: d.fn(help='\n`google-beta.google_tpu_v2_vm.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled.\n\n**Returns**:\n  - An attribute object that represents the `shielded_instance_config` sub block.\n', args=[]),
    new(
      enable_secure_boot
    ):: std.prune(a={
      enable_secure_boot: enable_secure_boot,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_tpu_v2_vm.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAcceleratorConfig':: d.fn(help='`google-beta.list[obj].withAcceleratorConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the accelerator_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withAcceleratorConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `accelerator_config` field.\n', args=[]),
  withAcceleratorConfig(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          accelerator_config: value,
        },
      },
    },
  },
  '#withAcceleratorConfigMixin':: d.fn(help='`google-beta.list[obj].withAcceleratorConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the accelerator_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAcceleratorConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `accelerator_config` field.\n', args=[]),
  withAcceleratorConfigMixin(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          accelerator_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAcceleratorType':: d.fn(help='`google-beta.string.withAcceleratorType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the accelerator_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `accelerator_type` field.\n', args=[]),
  withAcceleratorType(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          accelerator_type: value,
        },
      },
    },
  },
  '#withCidrBlock':: d.fn(help='`google-beta.string.withCidrBlock` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cidr_block field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cidr_block` field.\n', args=[]),
  withCidrBlock(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          cidr_block: value,
        },
      },
    },
  },
  '#withDataDisks':: d.fn(help='`google-beta.list[obj].withDataDisks` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the data_disks field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withDataDisksMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `data_disks` field.\n', args=[]),
  withDataDisks(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          data_disks: value,
        },
      },
    },
  },
  '#withDataDisksMixin':: d.fn(help='`google-beta.list[obj].withDataDisksMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the data_disks field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withDataDisks](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `data_disks` field.\n', args=[]),
  withDataDisksMixin(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          data_disks+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMetadata':: d.fn(help='`google-beta.obj.withMetadata` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the metadata field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `metadata` field.\n', args=[]),
  withMetadata(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworkConfig':: d.fn(help='`google-beta.list[obj].withNetworkConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withNetworkConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfig(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          network_config: value,
        },
      },
    },
  },
  '#withNetworkConfigMixin':: d.fn(help='`google-beta.list[obj].withNetworkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withNetworkConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfigMixin(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          network_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRuntimeVersion':: d.fn(help='`google-beta.string.withRuntimeVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the runtime_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `runtime_version` field.\n', args=[]),
  withRuntimeVersion(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          runtime_version: value,
        },
      },
    },
  },
  '#withSchedulingConfig':: d.fn(help='`google-beta.list[obj].withSchedulingConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scheduling_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withSchedulingConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scheduling_config` field.\n', args=[]),
  withSchedulingConfig(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          scheduling_config: value,
        },
      },
    },
  },
  '#withSchedulingConfigMixin':: d.fn(help='`google-beta.list[obj].withSchedulingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scheduling_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withSchedulingConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scheduling_config` field.\n', args=[]),
  withSchedulingConfigMixin(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          scheduling_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withServiceAccount':: d.fn(help='`google-beta.list[obj].withServiceAccount` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the service_account field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withServiceAccountMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccount(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  '#withServiceAccountMixin':: d.fn(help='`google-beta.list[obj].withServiceAccountMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the service_account field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withServiceAccount](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccountMixin(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          service_account+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withShieldedInstanceConfig':: d.fn(help='`google-beta.list[obj].withShieldedInstanceConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the shielded_instance_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withShieldedInstanceConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `shielded_instance_config` field.\n', args=[]),
  withShieldedInstanceConfig(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          shielded_instance_config: value,
        },
      },
    },
  },
  '#withShieldedInstanceConfigMixin':: d.fn(help='`google-beta.list[obj].withShieldedInstanceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the shielded_instance_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withShieldedInstanceConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `shielded_instance_config` field.\n', args=[]),
  withShieldedInstanceConfigMixin(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          shielded_instance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTags':: d.fn(help='`google-beta.list.withTags` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the tags field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `tags` field.\n', args=[]),
  withTags(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          tags: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google-beta.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_tpu_v2_vm+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
