local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
  newAttrs(
    ciphertext,
    crypto_key_version,
    crc32=null
  ):: std.prune(a={
    ciphertext: ciphertext,
    crc32: crc32,
    crypto_key_version: crypto_key_version,
  }),
  withCiphertext(dataSrcLabel, value):: {
    data+: {
      google_kms_secret_asymmetric+: {
        [dataSrcLabel]+: {
          ciphertext: value,
        },
      },
    },
  },
  withCrc32(dataSrcLabel, value):: {
    data+: {
      google_kms_secret_asymmetric+: {
        [dataSrcLabel]+: {
          crc32: value,
        },
      },
    },
  },
  withCryptoKeyVersion(dataSrcLabel, value):: {
    data+: {
      google_kms_secret_asymmetric+: {
        [dataSrcLabel]+: {
          crypto_key_version: value,
        },
      },
    },
  },
}
