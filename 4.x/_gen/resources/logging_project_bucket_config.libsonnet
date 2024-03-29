local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_logging_project_bucket_config', url='', help='`google_logging_project_bucket_config` represents the `google-beta_google_logging_project_bucket_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  cmek_settings:: {
    '#new':: d.fn(help='\n`google-beta.google_logging_project_bucket_config.cmek_settings.new` constructs a new object with attributes and blocks configured for the `cmek_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The resource name for the configured Cloud KMS key.\nKMS key name format:\n&#34;projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]&#34;\nTo enable CMEK for the bucket, set this field to a valid kmsKeyName for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.\nThe Cloud KMS key used by the bucket can be updated by changing the kmsKeyName to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.\nSee [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information.\n\n**Returns**:\n  - An attribute object that represents the `cmek_settings` sub block.\n', args=[]),
    new(
      kms_key_name
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_logging_project_bucket_config.new` injects a new `google-beta_google_logging_project_bucket_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_logging_project_bucket_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_logging_project_bucket_config` using the reference:\n\n    $._ref.google-beta_google_logging_project_bucket_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_logging_project_bucket_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `bucket_id` (`string`): The name of the logging bucket. Logging automatically creates two log buckets: _Required and _Default.\n  - `description` (`string`): An optional description for this bucket. When `null`, the `description` field will be omitted from the resulting object.\n  - `enable_analytics` (`bool`): Enable log analytics for the bucket. Cannot be disabled once enabled. When `null`, the `enable_analytics` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the bucket.\n  - `locked` (`bool`): Whether the bucket is locked. The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty. When `null`, the `locked` field will be omitted from the resulting object.\n  - `project` (`string`): The parent project that contains the logging bucket.\n  - `retention_days` (`number`): Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. When `null`, the `retention_days` field will be omitted from the resulting object.\n  - `cmek_settings` (`list[obj]`): The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed. When `null`, the `cmek_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_logging_project_bucket_config.cmek_settings.new](#fn-cmek_settingsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    bucket_id,
    location,
    project,
    cmek_settings=null,
    description=null,
    enable_analytics=null,
    locked=null,
    retention_days=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_project_bucket_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket_id=bucket_id,
      cmek_settings=cmek_settings,
      description=description,
      enable_analytics=enable_analytics,
      location=location,
      locked=locked,
      project=project,
      retention_days=retention_days
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_logging_project_bucket_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_logging_project_bucket_config`\nTerraform resource.\n\nUnlike [google-beta.google_logging_project_bucket_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket_id` (`string`): The name of the logging bucket. Logging automatically creates two log buckets: _Required and _Default.\n  - `description` (`string`): An optional description for this bucket. When `null`, the `description` field will be omitted from the resulting object.\n  - `enable_analytics` (`bool`): Enable log analytics for the bucket. Cannot be disabled once enabled. When `null`, the `enable_analytics` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the bucket.\n  - `locked` (`bool`): Whether the bucket is locked. The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty. When `null`, the `locked` field will be omitted from the resulting object.\n  - `project` (`string`): The parent project that contains the logging bucket.\n  - `retention_days` (`number`): Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. When `null`, the `retention_days` field will be omitted from the resulting object.\n  - `cmek_settings` (`list[obj]`): The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed. When `null`, the `cmek_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_logging_project_bucket_config.cmek_settings.new](#fn-cmek_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_logging_project_bucket_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket_id,
    location,
    project,
    cmek_settings=null,
    description=null,
    enable_analytics=null,
    locked=null,
    retention_days=null
  ):: std.prune(a={
    bucket_id: bucket_id,
    cmek_settings: cmek_settings,
    description: description,
    enable_analytics: enable_analytics,
    location: location,
    locked: locked,
    project: project,
    retention_days: retention_days,
  }),
  '#withBucketId':: d.fn(help='`google-beta.string.withBucketId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the bucket_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket_id` field.\n', args=[]),
  withBucketId(resourceLabel, value): {
    resource+: {
      google_logging_project_bucket_config+: {
        [resourceLabel]+: {
          bucket_id: value,
        },
      },
    },
  },
  '#withCmekSettings':: d.fn(help='`google-beta.list[obj].withCmekSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cmek_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withCmekSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cmek_settings` field.\n', args=[]),
  withCmekSettings(resourceLabel, value): {
    resource+: {
      google_logging_project_bucket_config+: {
        [resourceLabel]+: {
          cmek_settings: value,
        },
      },
    },
  },
  '#withCmekSettingsMixin':: d.fn(help='`google-beta.list[obj].withCmekSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cmek_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withCmekSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cmek_settings` field.\n', args=[]),
  withCmekSettingsMixin(resourceLabel, value): {
    resource+: {
      google_logging_project_bucket_config+: {
        [resourceLabel]+: {
          cmek_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_logging_project_bucket_config+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEnableAnalytics':: d.fn(help='`google-beta.bool.withEnableAnalytics` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_analytics field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_analytics` field.\n', args=[]),
  withEnableAnalytics(resourceLabel, value): {
    resource+: {
      google_logging_project_bucket_config+: {
        [resourceLabel]+: {
          enable_analytics: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_logging_project_bucket_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withLocked':: d.fn(help='`google-beta.bool.withLocked` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the locked field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `locked` field.\n', args=[]),
  withLocked(resourceLabel, value): {
    resource+: {
      google_logging_project_bucket_config+: {
        [resourceLabel]+: {
          locked: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_logging_project_bucket_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRetentionDays':: d.fn(help='`google-beta.number.withRetentionDays` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the retention_days field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `retention_days` field.\n', args=[]),
  withRetentionDays(resourceLabel, value): {
    resource+: {
      google_logging_project_bucket_config+: {
        [resourceLabel]+: {
          retention_days: value,
        },
      },
    },
  },
}
