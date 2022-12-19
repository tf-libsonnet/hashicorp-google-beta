local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_network_services_edge_cache_keyset', url='', help='`google_network_services_edge_cache_keyset` represents the `google-beta_google_network_services_edge_cache_keyset` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_network_services_edge_cache_keyset.new` injects a new `google-beta_google_network_services_edge_cache_keyset` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_network_services_edge_cache_keyset.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_network_services_edge_cache_keyset` using the reference:\n\n    $._ref.google-beta_google_network_services_edge_cache_keyset.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_network_services_edge_cache_keyset.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the EdgeCache resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is created.\nThe name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,\nand all following characters must be a dash, underscore, letter or digit.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `public_key` (`list[obj]`): An ordered list of Ed25519 public keys to use for validating signed requests.\nYou must specify \u0026#39;public_keys\u0026#39; or \u0026#39;validation_shared_keys\u0026#39; (or both). The keys in \u0026#39;public_keys\u0026#39; are checked first.\nYou may specify no more than one Google-managed public key.\nIf you specify \u0026#39;public_keys\u0026#39;, you must specify at least one (1) key and may specify up to three (3) keys.\n\nEd25519 public keys are not secret, and only allow Google to validate a request was signed by your corresponding private key.\nEnsure that the private key is kept secret, and that only authorized users can add public keys to a keyset. When `null`, the `public_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_edge_cache_keyset.public_key.new](#fn-googlenetworkservicesedgecachekeysetpublickeynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_edge_cache_keyset.timeouts.new](#fn-googlenetworkservicesedgecachekeysettimeoutsnew) constructor.\n  - `validation_shared_keys` (`list[obj]`): An ordered list of shared keys to use for validating signed requests.\nShared keys are secret.  Ensure that only authorized users can add \u0026#39;validation_shared_keys\u0026#39; to a keyset.\nYou can rotate keys by appending (pushing) a new key to the list of \u0026#39;validation_shared_keys\u0026#39; and removing any superseded keys.\nYou must specify \u0026#39;public_keys\u0026#39; or \u0026#39;validation_shared_keys\u0026#39; (or both). The keys in \u0026#39;public_keys\u0026#39; are checked first. When `null`, the `validation_shared_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_edge_cache_keyset.validation_shared_keys.new](#fn-googlenetworkservicesedgecachekeysetvalidationsharedkeysnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    description=null,
    labels=null,
    project=null,
    public_key=null,
    timeouts=null,
    validation_shared_keys=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_services_edge_cache_keyset',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      labels=labels,
      name=name,
      project=project,
      public_key=public_key,
      timeouts=timeouts,
      validation_shared_keys=validation_shared_keys
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_network_services_edge_cache_keyset.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_services_edge_cache_keyset`\nTerraform resource.\n\nUnlike [google-beta.google_network_services_edge_cache_keyset.new](#fn-googlenetworkservicesedgecachekeysetnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the EdgeCache resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is created.\nThe name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,\nand all following characters must be a dash, underscore, letter or digit.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `public_key` (`list[obj]`): An ordered list of Ed25519 public keys to use for validating signed requests.\nYou must specify &#39;public_keys&#39; or &#39;validation_shared_keys&#39; (or both). The keys in &#39;public_keys&#39; are checked first.\nYou may specify no more than one Google-managed public key.\nIf you specify &#39;public_keys&#39;, you must specify at least one (1) key and may specify up to three (3) keys.\n\nEd25519 public keys are not secret, and only allow Google to validate a request was signed by your corresponding private key.\nEnsure that the private key is kept secret, and that only authorized users can add public keys to a keyset. When `null`, the `public_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_edge_cache_keyset.public_key.new](#fn-googlenetworkservicesedgecachekeysetpublickeynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_edge_cache_keyset.timeouts.new](#fn-googlenetworkservicesedgecachekeysettimeoutsnew) constructor.\n  - `validation_shared_keys` (`list[obj]`): An ordered list of shared keys to use for validating signed requests.\nShared keys are secret.  Ensure that only authorized users can add &#39;validation_shared_keys&#39; to a keyset.\nYou can rotate keys by appending (pushing) a new key to the list of &#39;validation_shared_keys&#39; and removing any superseded keys.\nYou must specify &#39;public_keys&#39; or &#39;validation_shared_keys&#39; (or both). The keys in &#39;public_keys&#39; are checked first. When `null`, the `validation_shared_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_edge_cache_keyset.validation_shared_keys.new](#fn-googlenetworkservicesedgecachekeysetvalidationsharedkeysnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_services_edge_cache_keyset` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    description=null,
    labels=null,
    project=null,
    public_key=null,
    timeouts=null,
    validation_shared_keys=null
  ):: std.prune(a={
    description: description,
    labels: labels,
    name: name,
    project: project,
    public_key: public_key,
    timeouts: timeouts,
    validation_shared_keys: validation_shared_keys,
  }),
  public_key:: {
    '#new':: d.fn(help='\n`google-beta.google_network_services_edge_cache_keyset.public_key.new` constructs a new object with attributes and blocks configured for the `public_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `managed` (`bool`): Set to true to have the CDN automatically manage this public key value. When `null`, the `managed` field will be omitted from the resulting object.\n  - `value` (`string`): The base64-encoded value of the Ed25519 public key. The base64 encoding can be padded (44 bytes) or unpadded (43 bytes).\nRepresentations or encodings of the public key other than this will be rejected with an error. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `public_key` sub block.\n', args=[]),
    new(
      managed=null,
      value=null
    ):: std.prune(a={
      managed: managed,
      value: value,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_network_services_edge_cache_keyset.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  validation_shared_keys:: {
    '#new':: d.fn(help='\n`google-beta.google_network_services_edge_cache_keyset.validation_shared_keys.new` constructs a new object with attributes and blocks configured for the `validation_shared_keys`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): The name of the secret version in Secret Manager.\n\nThe resource name of the secret version must be in the format &#39;projects/*/secrets/*/versions/*&#39; where the &#39;*&#39; values are replaced by the secrets themselves.\nThe secrets must be at least 16 bytes large.  The recommended secret size depends on the signature algorithm you are using.\n* If you are using HMAC-SHA1, we suggest 20-byte secrets.\n* If you are using HMAC-SHA256, we suggest 32-byte secrets.\nSee RFC 2104, Section 3 for more details on these recommendations.\n\n**Returns**:\n  - An attribute object that represents the `validation_shared_keys` sub block.\n', args=[]),
    new(
      secret_version
    ):: std.prune(a={
      secret_version: secret_version,
    }),
  },
  '#withDescription':: d.fn(help='`google-beta.google_network_services_edge_cache_keyset.withDescription` constructs a mixin object that can be merged into the `google_network_services_edge_cache_keyset`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.google_network_services_edge_cache_keyset.withLabels` constructs a mixin object that can be merged into the `google_network_services_edge_cache_keyset`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.google_network_services_edge_cache_keyset.withName` constructs a mixin object that can be merged into the `google_network_services_edge_cache_keyset`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.google_network_services_edge_cache_keyset.withProject` constructs a mixin object that can be merged into the `google_network_services_edge_cache_keyset`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPublicKey':: d.fn(help='`google-beta.google_network_services_edge_cache_keyset.withPublicKey` constructs a mixin object that can be merged into the `google_network_services_edge_cache_keyset`\nTerraform resource block to set or update the public_key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `public_key` field.\n', args=[]),
  withPublicKey(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          public_key: value,
        },
      },
    },
  },
  '#withPublicKeyMixin':: d.fn(help='`google-beta.google_network_services_edge_cache_keyset.withPublicKeyMixin` constructs a mixin object that can be merged into the `google_network_services_edge_cache_keyset`\nTerraform resource block to set or update the public_key field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.google_network_services_edge_cache_keyset.withPublicKey](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `public_key` field.\n', args=[]),
  withPublicKeyMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          public_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.google_network_services_edge_cache_keyset.withTimeouts` constructs a mixin object that can be merged into the `google_network_services_edge_cache_keyset`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.google_network_services_edge_cache_keyset.withTimeoutsMixin` constructs a mixin object that can be merged into the `google_network_services_edge_cache_keyset`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.google_network_services_edge_cache_keyset.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withValidationSharedKeys':: d.fn(help='`google-beta.google_network_services_edge_cache_keyset.withValidationSharedKeys` constructs a mixin object that can be merged into the `google_network_services_edge_cache_keyset`\nTerraform resource block to set or update the validation_shared_keys field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `validation_shared_keys` field.\n', args=[]),
  withValidationSharedKeys(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          validation_shared_keys: value,
        },
      },
    },
  },
  '#withValidationSharedKeysMixin':: d.fn(help='`google-beta.google_network_services_edge_cache_keyset.withValidationSharedKeysMixin` constructs a mixin object that can be merged into the `google_network_services_edge_cache_keyset`\nTerraform resource block to set or update the validation_shared_keys field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.google_network_services_edge_cache_keyset.withValidationSharedKeys](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `validation_shared_keys` field.\n', args=[]),
  withValidationSharedKeysMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          validation_shared_keys+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
