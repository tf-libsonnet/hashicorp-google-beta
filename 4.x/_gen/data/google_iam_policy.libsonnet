local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_iam_policy', url='', help='`google_iam_policy` represents the `google-beta_google_iam_policy` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  audit_config:: {
    audit_log_configs:: {
      '#new':: d.fn(help='\n`google-beta.google_iam_policy.audit_config.audit_log_configs.new` constructs a new object with attributes and blocks configured for the `audit_log_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exempted_members` (`list`): Set the `exempted_members` field on the resulting object. When `null`, the `exempted_members` field will be omitted from the resulting object.\n  - `log_type` (`string`): Set the `log_type` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `audit_log_configs` sub block.\n', args=[]),
      new(
        log_type,
        exempted_members=null
      ):: std.prune(a={
        exempted_members: exempted_members,
        log_type: log_type,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_iam_policy.audit_config.new` constructs a new object with attributes and blocks configured for the `audit_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service` (`string`): Set the `service` field on the resulting object.\n  - `audit_log_configs` (`list[obj]`): Set the `audit_log_configs` field on the resulting object. When `null`, the `audit_log_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_iam_policy.audit_config.audit_log_configs.new](#fn-audit_configaudit_log_configsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `audit_config` sub block.\n', args=[]),
    new(
      service,
      audit_log_configs=null
    ):: std.prune(a={
      audit_log_configs: audit_log_configs,
      service: service,
    }),
  },
  binding:: {
    condition:: {
      '#new':: d.fn(help='\n`google-beta.google_iam_policy.binding.condition.new` constructs a new object with attributes and blocks configured for the `condition`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Set the `description` field on the resulting object. When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Set the `expression` field on the resulting object.\n  - `title` (`string`): Set the `title` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `condition` sub block.\n', args=[]),
      new(
        expression,
        title,
        description=null
      ):: std.prune(a={
        description: description,
        expression: expression,
        title: title,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_iam_policy.binding.new` constructs a new object with attributes and blocks configured for the `binding`\nTerraform sub block.\n\n\n\n**Args**:\n  - `members` (`list`): Set the `members` field on the resulting object.\n  - `role` (`string`): Set the `role` field on the resulting object.\n  - `condition` (`list[obj]`): Set the `condition` field on the resulting object. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_iam_policy.binding.condition.new](#fn-bindingconditionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `binding` sub block.\n', args=[]),
    new(
      members,
      role,
      condition=null
    ):: std.prune(a={
      condition: condition,
      members: members,
      role: role,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.data.google_iam_policy.new` injects a new `data_google-beta_google_iam_policy` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.data.google_iam_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.data.google_iam_policy` using the reference:\n\n    $._ref.data_google-beta_google_iam_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google-beta_google_iam_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `audit_config` (`list[obj]`): Set the `audit_config` field on the resulting data source block. When `null`, the `audit_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.data.google_iam_policy.audit_config.new](#fn-audit_confignew) constructor.\n  - `binding` (`list[obj]`): Set the `binding` field on the resulting data source block. When `null`, the `binding` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.data.google_iam_policy.binding.new](#fn-bindingnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    audit_config=null,
    binding=null,
    _meta={}
  ):: tf.withData(
    type='google_iam_policy',
    label=dataSrcLabel,
    attrs=self.newAttrs(audit_config=audit_config, binding=binding),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.data.google_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_iam_policy`\nTerraform data source.\n\nUnlike [google-beta.data.google_iam_policy.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `audit_config` (`list[obj]`): Set the `audit_config` field on the resulting object. When `null`, the `audit_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.data.google_iam_policy.audit_config.new](#fn-audit_confignew) constructor.\n  - `binding` (`list[obj]`): Set the `binding` field on the resulting object. When `null`, the `binding` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.data.google_iam_policy.binding.new](#fn-bindingnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_iam_policy` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    audit_config=null,
    binding=null
  ):: std.prune(a={
    audit_config: audit_config,
    binding: binding,
  }),
  '#withAuditConfig':: d.fn(help='`google-beta.list[obj].withAuditConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the audit_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withAuditConfigMixin](TODO) function.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `audit_config` field.\n', args=[]),
  withAuditConfig(dataSrcLabel, value): {
    data+: {
      google_iam_policy+: {
        [dataSrcLabel]+: {
          audit_config: value,
        },
      },
    },
  },
  '#withAuditConfigMixin':: d.fn(help='`google-beta.list[obj].withAuditConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the audit_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAuditConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `audit_config` field.\n', args=[]),
  withAuditConfigMixin(dataSrcLabel, value): {
    data+: {
      google_iam_policy+: {
        [dataSrcLabel]+: {
          audit_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBinding':: d.fn(help='`google-beta.list[obj].withBinding` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the binding field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withBindingMixin](TODO) function.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `binding` field.\n', args=[]),
  withBinding(dataSrcLabel, value): {
    data+: {
      google_iam_policy+: {
        [dataSrcLabel]+: {
          binding: value,
        },
      },
    },
  },
  '#withBindingMixin':: d.fn(help='`google-beta.list[obj].withBindingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the binding field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withBinding](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `binding` field.\n', args=[]),
  withBindingMixin(dataSrcLabel, value): {
    data+: {
      google_iam_policy+: {
        [dataSrcLabel]+: {
          binding+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
