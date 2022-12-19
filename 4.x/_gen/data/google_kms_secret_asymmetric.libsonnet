local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_kms_secret_asymmetric', url='', help='`google_kms_secret_asymmetric` represents the `google-beta_google_kms_secret_asymmetric` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.data.google_kms_secret_asymmetric.new` injects a new `data_google-beta_google_kms_secret_asymmetric` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.data.google_kms_secret_asymmetric.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.data.google_kms_secret_asymmetric` using the reference:\n\n    $._ref.data_google-beta_google_kms_secret_asymmetric.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google-beta_google_kms_secret_asymmetric.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `ciphertext` (`string`): The public key encrypted ciphertext in base64 encoding\n  - `crc32` (`string`): The crc32 checksum of the ciphertext, hexadecimal encoding. If not specified, it will be computed When `null`, the `crc32` field will be omitted from the resulting object.\n  - `crypto_key_version` (`string`): The fully qualified KMS crypto key version name\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    ciphertext,
    crypto_key_version,
    crc32=null,
    _meta={}
  ):: tf.withData(
    type='google_kms_secret_asymmetric',
    label=dataSrcLabel,
    attrs=self.newAttrs(ciphertext=ciphertext, crc32=crc32, crypto_key_version=crypto_key_version),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.data.google_kms_secret_asymmetric.newAttrs` constructs a new object with attributes and blocks configured for the `google_kms_secret_asymmetric`\nTerraform data source.\n\nUnlike [google-beta.data.google_kms_secret_asymmetric.new](#fn-google_kms_secret_asymmetricnew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `ciphertext` (`string`): The public key encrypted ciphertext in base64 encoding\n  - `crc32` (`string`): The crc32 checksum of the ciphertext, hexadecimal encoding. If not specified, it will be computed When `null`, the `crc32` field will be omitted from the resulting object.\n  - `crypto_key_version` (`string`): The fully qualified KMS crypto key version name\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_kms_secret_asymmetric` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    ciphertext,
    crypto_key_version,
    crc32=null
  ):: std.prune(a={
    ciphertext: ciphertext,
    crc32: crc32,
    crypto_key_version: crypto_key_version,
  }),
  '#withCiphertext':: d.fn(help='`google-beta.string.withCiphertext` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the ciphertext field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ciphertext` field.\n', args=[]),
  withCiphertext(dataSrcLabel, value): {
    data+: {
      google_kms_secret_asymmetric+: {
        [dataSrcLabel]+: {
          ciphertext: value,
        },
      },
    },
  },
  '#withCrc32':: d.fn(help='`google-beta.string.withCrc32` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the crc32 field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `crc32` field.\n', args=[]),
  withCrc32(dataSrcLabel, value): {
    data+: {
      google_kms_secret_asymmetric+: {
        [dataSrcLabel]+: {
          crc32: value,
        },
      },
    },
  },
  '#withCryptoKeyVersion':: d.fn(help='`google-beta.string.withCryptoKeyVersion` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the crypto_key_version field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `crypto_key_version` field.\n', args=[]),
  withCryptoKeyVersion(dataSrcLabel, value): {
    data+: {
      google_kms_secret_asymmetric+: {
        [dataSrcLabel]+: {
          crypto_key_version: value,
        },
      },
    },
  },
}
