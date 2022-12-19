local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_compute_machine_image', url='', help='`google_compute_machine_image` represents the `google-beta_google_compute_machine_image` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  machine_image_encryption_key:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_machine_image.machine_image_encryption_key.new` constructs a new object with attributes and blocks configured for the `machine_image_encryption_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The name of the encryption key that is stored in Google Cloud KMS. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `kms_key_service_account` (`string`): The service account used for the encryption request for the given KMS key.\nIf absent, the Compute Engine Service Agent service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.\n  - `raw_key` (`string`): Specifies a 256-bit customer-supplied encryption key, encoded in\nRFC 4648 base64 to either encrypt or decrypt this resource. When `null`, the `raw_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `machine_image_encryption_key` sub block.\n', args=[]),
    new(
      kms_key_name=null,
      kms_key_service_account=null,
      raw_key=null
    ):: std.prune(a={
      kms_key_name: kms_key_name,
      kms_key_service_account: kms_key_service_account,
      raw_key: raw_key,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_compute_machine_image.new` injects a new `google-beta_google_compute_machine_image` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_compute_machine_image.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_compute_machine_image` using the reference:\n\n    $._ref.google-beta_google_compute_machine_image.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_compute_machine_image.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A text description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `guest_flush` (`bool`): Specify this to create an application consistent machine image by informing the OS to prepare for the snapshot process.\nCurrently only supported on Windows instances using the Volume Shadow Copy Service (VSS). When `null`, the `guest_flush` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `source_instance` (`string`): The source instance used to create the machine image. You can provide this as a partial or full URL to the resource.\n  - `machine_image_encryption_key` (`list[obj]`): Encrypts the machine image using a customer-supplied encryption key.\n\nAfter you encrypt a machine image with a customer-supplied key, you must\nprovide the same key if you use the machine image later (e.g. to create a\ninstance from the image) When `null`, the `machine_image_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_machine_image.machine_image_encryption_key.new](#fn-machine_image_encryption_keynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_machine_image.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    source_instance,
    description=null,
    guest_flush=null,
    machine_image_encryption_key=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_machine_image',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      guest_flush=guest_flush,
      machine_image_encryption_key=machine_image_encryption_key,
      name=name,
      project=project,
      source_instance=source_instance,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_compute_machine_image.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_machine_image`\nTerraform resource.\n\nUnlike [google-beta.google_compute_machine_image.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A text description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `guest_flush` (`bool`): Specify this to create an application consistent machine image by informing the OS to prepare for the snapshot process.\nCurrently only supported on Windows instances using the Volume Shadow Copy Service (VSS). When `null`, the `guest_flush` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `source_instance` (`string`): The source instance used to create the machine image. You can provide this as a partial or full URL to the resource.\n  - `machine_image_encryption_key` (`list[obj]`): Encrypts the machine image using a customer-supplied encryption key.\n\nAfter you encrypt a machine image with a customer-supplied key, you must\nprovide the same key if you use the machine image later (e.g. to create a\ninstance from the image) When `null`, the `machine_image_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_machine_image.machine_image_encryption_key.new](#fn-machine_image_encryption_keynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_machine_image.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_machine_image` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    source_instance,
    description=null,
    guest_flush=null,
    machine_image_encryption_key=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    guest_flush: guest_flush,
    machine_image_encryption_key: machine_image_encryption_key,
    name: name,
    project: project,
    source_instance: source_instance,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_machine_image.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withGuestFlush':: d.fn(help='`google-beta.bool.withGuestFlush` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the guest_flush field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `guest_flush` field.\n', args=[]),
  withGuestFlush(resourceLabel, value): {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          guest_flush: value,
        },
      },
    },
  },
  '#withMachineImageEncryptionKey':: d.fn(help='`google-beta.list[obj].withMachineImageEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the machine_image_encryption_key field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withMachineImageEncryptionKeyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `machine_image_encryption_key` field.\n', args=[]),
  withMachineImageEncryptionKey(resourceLabel, value): {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          machine_image_encryption_key: value,
        },
      },
    },
  },
  '#withMachineImageEncryptionKeyMixin':: d.fn(help='`google-beta.list[obj].withMachineImageEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the machine_image_encryption_key field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withMachineImageEncryptionKey](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `machine_image_encryption_key` field.\n', args=[]),
  withMachineImageEncryptionKeyMixin(resourceLabel, value): {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          machine_image_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSourceInstance':: d.fn(help='`google-beta.string.withSourceInstance` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the source_instance field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `source_instance` field.\n', args=[]),
  withSourceInstance(resourceLabel, value): {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          source_instance: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
