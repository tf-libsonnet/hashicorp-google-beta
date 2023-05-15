local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_workstations_workstation_config', url='', help='`google_workstations_workstation_config` represents the `google-beta_google_workstations_workstation_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  container:: {
    '#new':: d.fn(help='\n`google-beta.google_workstations_workstation_config.container.new` constructs a new object with attributes and blocks configured for the `container`\nTerraform sub block.\n\n\n\n**Args**:\n  - `args` (`list`): Arguments passed to the entrypoint. When `null`, the `args` field will be omitted from the resulting object.\n  - `command` (`list`): If set, overrides the default ENTRYPOINT specified by the image. When `null`, the `command` field will be omitted from the resulting object.\n  - `env` (`obj`): Environment variables passed to the container.\nThe elements are of the form &#34;KEY=VALUE&#34; for the environment variable &#34;KEY&#34; being given the value &#34;VALUE&#34;. When `null`, the `env` field will be omitted from the resulting object.\n  - `image` (`string`): Docker image defining the container. This image must be accessible by the config&#39;s service account. When `null`, the `image` field will be omitted from the resulting object.\n  - `run_as_user` (`number`): If set, overrides the USER specified in the image with the given uid. When `null`, the `run_as_user` field will be omitted from the resulting object.\n  - `working_dir` (`string`): If set, overrides the default DIR specified by the image. When `null`, the `working_dir` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `container` sub block.\n', args=[]),
    new(
      args=null,
      command=null,
      env=null,
      image=null,
      run_as_user=null,
      working_dir=null
    ):: std.prune(a={
      args: args,
      command: command,
      env: env,
      image: image,
      run_as_user: run_as_user,
      working_dir: working_dir,
    }),
  },
  encryption_key:: {
    '#new':: d.fn(help='\n`google-beta.google_workstations_workstation_config.encryption_key.new` constructs a new object with attributes and blocks configured for the `encryption_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key` (`string`): The name of the Google Cloud KMS encryption key.\n  - `kms_key_service_account` (`string`): The service account to use with the specified KMS key.\n\n**Returns**:\n  - An attribute object that represents the `encryption_key` sub block.\n', args=[]),
    new(
      kms_key,
      kms_key_service_account
    ):: std.prune(a={
      kms_key: kms_key,
      kms_key_service_account: kms_key_service_account,
    }),
  },
  host:: {
    gce_instance:: {
      confidential_instance_config:: {
        '#new':: d.fn(help='\n`google-beta.google_workstations_workstation_config.host.gce_instance.confidential_instance_config.new` constructs a new object with attributes and blocks configured for the `confidential_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_confidential_compute` (`bool`): Whether the instance has confidential compute enabled. When `null`, the `enable_confidential_compute` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `confidential_instance_config` sub block.\n', args=[]),
        new(
          enable_confidential_compute=null
        ):: std.prune(a={
          enable_confidential_compute: enable_confidential_compute,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_workstations_workstation_config.host.gce_instance.new` constructs a new object with attributes and blocks configured for the `gce_instance`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boot_disk_size_gb` (`number`): Size of the boot disk in GB. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.\n  - `disable_public_ip_addresses` (`bool`): Whether instances have no public IP address. When `null`, the `disable_public_ip_addresses` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The name of a Compute Engine machine type. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `pool_size` (`number`): Number of instances to pool for faster workstation startup. When `null`, the `pool_size` field will be omitted from the resulting object.\n  - `service_account` (`string`): Email address of the service account that will be used on VM instances used to support this config. This service account must have permission to pull the specified container image. If not set, VMs will run without a service account, in which case the image must be publicly accessible. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `tags` (`list`): Network tags to add to the Compute Engine machines backing the Workstations. When `null`, the `tags` field will be omitted from the resulting object.\n  - `confidential_instance_config` (`list[obj]`): A set of Compute Engine Confidential VM instance options. When `null`, the `confidential_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.host.gce_instance.confidential_instance_config.new](#fn-hosthostconfidential_instance_confignew) constructor.\n  - `shielded_instance_config` (`list[obj]`): A set of Compute Engine Shielded instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.host.gce_instance.shielded_instance_config.new](#fn-hosthostshielded_instance_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `gce_instance` sub block.\n', args=[]),
      new(
        boot_disk_size_gb=null,
        confidential_instance_config=null,
        disable_public_ip_addresses=null,
        machine_type=null,
        pool_size=null,
        service_account=null,
        shielded_instance_config=null,
        tags=null
      ):: std.prune(a={
        boot_disk_size_gb: boot_disk_size_gb,
        confidential_instance_config: confidential_instance_config,
        disable_public_ip_addresses: disable_public_ip_addresses,
        machine_type: machine_type,
        pool_size: pool_size,
        service_account: service_account,
        shielded_instance_config: shielded_instance_config,
        tags: tags,
      }),
      shielded_instance_config:: {
        '#new':: d.fn(help='\n`google-beta.google_workstations_workstation_config.host.gce_instance.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_integrity_monitoring` (`bool`): Whether the instance has integrity monitoring enabled. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.\n  - `enable_secure_boot` (`bool`): Whether the instance has Secure Boot enabled. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.\n  - `enable_vtpm` (`bool`): Whether the instance has the vTPM enabled. When `null`, the `enable_vtpm` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `shielded_instance_config` sub block.\n', args=[]),
        new(
          enable_integrity_monitoring=null,
          enable_secure_boot=null,
          enable_vtpm=null
        ):: std.prune(a={
          enable_integrity_monitoring: enable_integrity_monitoring,
          enable_secure_boot: enable_secure_boot,
          enable_vtpm: enable_vtpm,
        }),
      },
    },
    '#new':: d.fn(help='\n`google-beta.google_workstations_workstation_config.host.new` constructs a new object with attributes and blocks configured for the `host`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gce_instance` (`list[obj]`): A runtime using a Compute Engine instance. When `null`, the `gce_instance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.host.gce_instance.new](#fn-hostgce_instancenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `host` sub block.\n', args=[]),
    new(
      gce_instance=null
    ):: std.prune(a={
      gce_instance: gce_instance,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_workstations_workstation_config.new` injects a new `google-beta_google_workstations_workstation_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_workstations_workstation_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_workstations_workstation_config` using the reference:\n\n    $._ref.google-beta_google_workstations_workstation_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_workstations_workstation_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Client-specified annotations. This is distinct from labels. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `display_name` (`string`): Human-readable name for this resource. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the workstation cluster config should reside.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `workstation_cluster_id` (`string`): The ID of the parent workstation cluster.\n  - `workstation_config_id` (`string`): The ID to be assigned to the workstation cluster config.\n  - `container` (`list[obj]`): Container that will be run for each workstation using this configuration when that workstation is started. When `null`, the `container` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.container.new](#fn-containernew) constructor.\n  - `encryption_key` (`list[obj]`): Encrypts resources of this workstation configuration using a customer-managed encryption key.\n\nIf specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata.\nIf the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk will be lost.\nIf the encryption key is revoked, the workstation session will automatically be stopped within 7 hours. When `null`, the `encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.encryption_key.new](#fn-encryption_keynew) constructor.\n  - `host` (`list[obj]`): Runtime host for a workstation. When `null`, the `host` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.host.new](#fn-hostnew) constructor.\n  - `persistent_directories` (`list[obj]`): Directories to persist across workstation sessions. When `null`, the `persistent_directories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.persistent_directories.new](#fn-persistent_directoriesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    workstation_cluster_id,
    workstation_config_id,
    annotations=null,
    container=null,
    display_name=null,
    encryption_key=null,
    host=null,
    labels=null,
    persistent_directories=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_workstations_workstation_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      container=container,
      display_name=display_name,
      encryption_key=encryption_key,
      host=host,
      labels=labels,
      location=location,
      persistent_directories=persistent_directories,
      project=project,
      timeouts=timeouts,
      workstation_cluster_id=workstation_cluster_id,
      workstation_config_id=workstation_config_id
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_workstations_workstation_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_workstations_workstation_config`\nTerraform resource.\n\nUnlike [google-beta.google_workstations_workstation_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Client-specified annotations. This is distinct from labels. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `display_name` (`string`): Human-readable name for this resource. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the workstation cluster config should reside.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `workstation_cluster_id` (`string`): The ID of the parent workstation cluster.\n  - `workstation_config_id` (`string`): The ID to be assigned to the workstation cluster config.\n  - `container` (`list[obj]`): Container that will be run for each workstation using this configuration when that workstation is started. When `null`, the `container` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.container.new](#fn-containernew) constructor.\n  - `encryption_key` (`list[obj]`): Encrypts resources of this workstation configuration using a customer-managed encryption key.\n\nIf specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata.\nIf the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk will be lost.\nIf the encryption key is revoked, the workstation session will automatically be stopped within 7 hours. When `null`, the `encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.encryption_key.new](#fn-encryption_keynew) constructor.\n  - `host` (`list[obj]`): Runtime host for a workstation. When `null`, the `host` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.host.new](#fn-hostnew) constructor.\n  - `persistent_directories` (`list[obj]`): Directories to persist across workstation sessions. When `null`, the `persistent_directories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.persistent_directories.new](#fn-persistent_directoriesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_workstations_workstation_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    workstation_cluster_id,
    workstation_config_id,
    annotations=null,
    container=null,
    display_name=null,
    encryption_key=null,
    host=null,
    labels=null,
    persistent_directories=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    container: container,
    display_name: display_name,
    encryption_key: encryption_key,
    host: host,
    labels: labels,
    location: location,
    persistent_directories: persistent_directories,
    project: project,
    timeouts: timeouts,
    workstation_cluster_id: workstation_cluster_id,
    workstation_config_id: workstation_config_id,
  }),
  persistent_directories:: {
    gce_pd:: {
      '#new':: d.fn(help='\n`google-beta.google_workstations_workstation_config.persistent_directories.gce_pd.new` constructs a new object with attributes and blocks configured for the `gce_pd`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disk_type` (`string`): Type of the disk to use. When `null`, the `disk_type` field will be omitted from the resulting object.\n  - `fs_type` (`string`): Type of file system that the disk should be formatted with. The workstation image must support this file system type. Must be empty if sourceSnapshot is set. When `null`, the `fs_type` field will be omitted from the resulting object.\n  - `reclaim_policy` (`string`): What should happen to the disk after the workstation is deleted. Defaults to DELETE. Possible values: [&#34;DELETE&#34;, &#34;RETAIN&#34;] When `null`, the `reclaim_policy` field will be omitted from the resulting object.\n  - `size_gb` (`number`): Size of the disk in GB. Must be empty if sourceSnapshot is set. When `null`, the `size_gb` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `gce_pd` sub block.\n', args=[]),
      new(
        disk_type=null,
        fs_type=null,
        reclaim_policy=null,
        size_gb=null
      ):: std.prune(a={
        disk_type: disk_type,
        fs_type: fs_type,
        reclaim_policy: reclaim_policy,
        size_gb: size_gb,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_workstations_workstation_config.persistent_directories.new` constructs a new object with attributes and blocks configured for the `persistent_directories`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mount_path` (`string`): Location of this directory in the running workstation. When `null`, the `mount_path` field will be omitted from the resulting object.\n  - `gce_pd` (`list[obj]`): PersistentDirectory backed by a Compute Engine regional persistent disk. When `null`, the `gce_pd` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.persistent_directories.gce_pd.new](#fn-persistent_directoriesgce_pdnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `persistent_directories` sub block.\n', args=[]),
    new(
      gce_pd=null,
      mount_path=null
    ):: std.prune(a={
      gce_pd: gce_pd,
      mount_path: mount_path,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_workstations_workstation_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withContainer':: d.fn(help='`google-beta.list[obj].withContainer` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the container field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withContainerMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `container` field.\n', args=[]),
  withContainer(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          container: value,
        },
      },
    },
  },
  '#withContainerMixin':: d.fn(help='`google-beta.list[obj].withContainerMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the container field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withContainer](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `container` field.\n', args=[]),
  withContainerMixin(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          container+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEncryptionKey':: d.fn(help='`google-beta.list[obj].withEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_key field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withEncryptionKeyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_key` field.\n', args=[]),
  withEncryptionKey(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          encryption_key: value,
        },
      },
    },
  },
  '#withEncryptionKeyMixin':: d.fn(help='`google-beta.list[obj].withEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_key field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withEncryptionKey](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_key` field.\n', args=[]),
  withEncryptionKeyMixin(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withHost':: d.fn(help='`google-beta.list[obj].withHost` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the host field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withHostMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `host` field.\n', args=[]),
  withHost(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          host: value,
        },
      },
    },
  },
  '#withHostMixin':: d.fn(help='`google-beta.list[obj].withHostMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the host field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withHost](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `host` field.\n', args=[]),
  withHostMixin(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          host+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withPersistentDirectories':: d.fn(help='`google-beta.list[obj].withPersistentDirectories` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the persistent_directories field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withPersistentDirectoriesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `persistent_directories` field.\n', args=[]),
  withPersistentDirectories(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          persistent_directories: value,
        },
      },
    },
  },
  '#withPersistentDirectoriesMixin':: d.fn(help='`google-beta.list[obj].withPersistentDirectoriesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the persistent_directories field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withPersistentDirectories](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `persistent_directories` field.\n', args=[]),
  withPersistentDirectoriesMixin(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          persistent_directories+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWorkstationClusterId':: d.fn(help='`google-beta.string.withWorkstationClusterId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the workstation_cluster_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `workstation_cluster_id` field.\n', args=[]),
  withWorkstationClusterId(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          workstation_cluster_id: value,
        },
      },
    },
  },
  '#withWorkstationConfigId':: d.fn(help='`google-beta.string.withWorkstationConfigId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the workstation_config_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `workstation_config_id` field.\n', args=[]),
  withWorkstationConfigId(resourceLabel, value): {
    resource+: {
      google_workstations_workstation_config+: {
        [resourceLabel]+: {
          workstation_config_id: value,
        },
      },
    },
  },
}
