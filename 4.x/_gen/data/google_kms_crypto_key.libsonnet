local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_kms_crypto_key', url='', help='`google_kms_crypto_key` represents the `google-beta_google_kms_crypto_key` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.data.google_kms_crypto_key.new` injects a new `data_google-beta_google_kms_crypto_key` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.data.google_kms_crypto_key.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.data.google_kms_crypto_key` using the reference:\n\n    $._ref.data_google-beta_google_kms_crypto_key.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google-beta_google_kms_crypto_key.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `key_ring` (`string`): The KeyRing that this key belongs to.\nFormat: \u0026#39;\u0026#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}\u0026#39;\u0026#39;.\n  - `name` (`string`): The resource name for the CryptoKey.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    key_ring,
    name,
    _meta={}
  ):: tf.withData(
    type='google_kms_crypto_key',
    label=dataSrcLabel,
    attrs=self.newAttrs(key_ring=key_ring, name=name),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.data.google_kms_crypto_key.newAttrs` constructs a new object with attributes and blocks configured for the `google_kms_crypto_key`\nTerraform data source.\n\nUnlike [google-beta.data.google_kms_crypto_key.new](#fn-googlekmscryptokeynew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `key_ring` (`string`): The KeyRing that this key belongs to.\nFormat: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}&#39;&#39;.\n  - `name` (`string`): The resource name for the CryptoKey.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_kms_crypto_key` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    key_ring,
    name
  ):: std.prune(a={
    key_ring: key_ring,
    name: name,
  }),
  '#withKeyRing':: d.fn(help='`google-beta.google_kms_crypto_key.withKeyRing` constructs a mixin object that can be merged into the `google_kms_crypto_key`\nTerraform data source block to set or update the key_ring field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `key_ring` field.\n', args=[]),
  withKeyRing(dataSrcLabel, value):: {
    data+: {
      google_kms_crypto_key+: {
        [dataSrcLabel]+: {
          key_ring: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.google_kms_crypto_key.withName` constructs a mixin object that can be merged into the `google_kms_crypto_key`\nTerraform data source block to set or update the name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(dataSrcLabel, value):: {
    data+: {
      google_kms_crypto_key+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
}
