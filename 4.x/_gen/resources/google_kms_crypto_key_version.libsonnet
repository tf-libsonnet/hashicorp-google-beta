local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_kms_crypto_key_version', url='', help='`google_kms_crypto_key_version` represents the `google-beta_google_kms_crypto_key_version` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_kms_crypto_key_version.new` injects a new `google-beta_google_kms_crypto_key_version` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_kms_crypto_key_version.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_kms_crypto_key_version` using the reference:\n\n    $._ref.google-beta_google_kms_crypto_key_version.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_kms_crypto_key_version.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `crypto_key` (`string`): The name of the cryptoKey associated with the CryptoKeyVersions.\nFormat: \u0026#39;\u0026#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}\u0026#39;\u0026#39;\n  - `state` (`string`): The current state of the CryptoKeyVersion. Possible values: [\u0026#34;PENDING_GENERATION\u0026#34;, \u0026#34;ENABLED\u0026#34;, \u0026#34;DISABLED\u0026#34;, \u0026#34;DESTROYED\u0026#34;, \u0026#34;DESTROY_SCHEDULED\u0026#34;, \u0026#34;PENDING_IMPORT\u0026#34;, \u0026#34;IMPORT_FAILED\u0026#34;] When `null`, the `state` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_kms_crypto_key_version.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    crypto_key,
    state=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_kms_crypto_key_version',
    label=resourceLabel,
    attrs=self.newAttrs(crypto_key=crypto_key, state=state, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_kms_crypto_key_version.newAttrs` constructs a new object with attributes and blocks configured for the `google_kms_crypto_key_version`\nTerraform resource.\n\nUnlike [google-beta.google_kms_crypto_key_version.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `crypto_key` (`string`): The name of the cryptoKey associated with the CryptoKeyVersions.\nFormat: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}&#39;&#39;\n  - `state` (`string`): The current state of the CryptoKeyVersion. Possible values: [&#34;PENDING_GENERATION&#34;, &#34;ENABLED&#34;, &#34;DISABLED&#34;, &#34;DESTROYED&#34;, &#34;DESTROY_SCHEDULED&#34;, &#34;PENDING_IMPORT&#34;, &#34;IMPORT_FAILED&#34;] When `null`, the `state` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_kms_crypto_key_version.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_kms_crypto_key_version` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    crypto_key,
    state=null,
    timeouts=null
  ):: std.prune(a={
    crypto_key: crypto_key,
    state: state,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_kms_crypto_key_version.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCryptoKey':: d.fn(help='`google-beta.string.withCryptoKey` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the crypto_key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `crypto_key` field.\n', args=[]),
  withCryptoKey(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key_version+: {
        [resourceLabel]+: {
          crypto_key: value,
        },
      },
    },
  },
  '#withState':: d.fn(help='`google-beta.string.withState` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the state field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `state` field.\n', args=[]),
  withState(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key_version+: {
        [resourceLabel]+: {
          state: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key_version+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key_version+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
