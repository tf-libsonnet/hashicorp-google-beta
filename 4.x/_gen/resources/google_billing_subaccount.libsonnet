local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_billing_subaccount', url='', help='`google_billing_subaccount` represents the `google-beta_google_billing_subaccount` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_billing_subaccount.new` injects a new `google-beta_google_billing_subaccount` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_billing_subaccount.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_billing_subaccount` using the reference:\n\n    $._ref.google-beta_google_billing_subaccount.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_billing_subaccount.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `deletion_policy` (`string`):  When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `display_name` (`string`): \n  - `master_billing_account` (`string`): \n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    master_billing_account,
    deletion_policy=null,
    _meta={}
  ):: tf.withResource(
    type='google_billing_subaccount',
    label=resourceLabel,
    attrs=self.newAttrs(deletion_policy=deletion_policy, display_name=display_name, master_billing_account=master_billing_account),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_billing_subaccount.newAttrs` constructs a new object with attributes and blocks configured for the `google_billing_subaccount`\nTerraform resource.\n\nUnlike [google-beta.google_billing_subaccount.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `deletion_policy` (`string`):  When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `display_name` (`string`): \n  - `master_billing_account` (`string`): \n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_billing_subaccount` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    master_billing_account,
    deletion_policy=null
  ):: std.prune(a={
    deletion_policy: deletion_policy,
    display_name: display_name,
    master_billing_account: master_billing_account,
  }),
  '#withDeletionPolicy':: d.fn(help='`google-beta.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the deletion_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `deletion_policy` field.\n', args=[]),
  withDeletionPolicy(resourceLabel, value): {
    resource+: {
      google_billing_subaccount+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_billing_subaccount+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withMasterBillingAccount':: d.fn(help='`google-beta.string.withMasterBillingAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the master_billing_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `master_billing_account` field.\n', args=[]),
  withMasterBillingAccount(resourceLabel, value): {
    resource+: {
      google_billing_subaccount+: {
        [resourceLabel]+: {
          master_billing_account: value,
        },
      },
    },
  },
}
