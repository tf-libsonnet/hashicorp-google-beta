local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_clouddeploy_automation', url='', help='`google_clouddeploy_automation` represents the `google-beta_google_clouddeploy_automation` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_clouddeploy_automation.new` injects a new `google-beta_google_clouddeploy_automation` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_clouddeploy_automation.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_clouddeploy_automation` using the reference:\n\n    $._ref.google-beta_google_clouddeploy_automation.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_clouddeploy_automation.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (\u0026#39;/\u0026#39;). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (\u0026#39;[a-z0-9A-Z]\u0026#39;) with dashes (\u0026#39;-\u0026#39;), underscores (\u0026#39;_\u0026#39;), dots (\u0026#39;.\u0026#39;), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(\u0026#39;.\u0026#39;), not longer than 253 characters in total, followed by a slash (\u0026#39;/\u0026#39;). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field \u0026#39;effective_annotations\u0026#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `delivery_pipeline` (`string`): The delivery_pipeline for the resource\n  - `description` (`string`): Optional. Description of the \u0026#39;Automation\u0026#39;. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be \u0026lt;= 63 characters.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Name of the \u0026#39;Automation\u0026#39;.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `service_account` (`string`): Required. Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.\n  - `suspended` (`bool`): Optional. When Suspended, automation is deactivated from execution. When `null`, the `suspended` field will be omitted from the resulting object.\n  - `rules` (`list[obj]`): Required. List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.rules.new](#fn-rulesnew) constructor.\n  - `selector` (`list[obj]`): Required. Selected resources to which the automation will be applied. When `null`, the `selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.selector.new](#fn-selectornew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    delivery_pipeline,
    location,
    name,
    service_account,
    annotations=null,
    description=null,
    labels=null,
    project=null,
    rules=null,
    selector=null,
    suspended=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_clouddeploy_automation',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      delivery_pipeline=delivery_pipeline,
      description=description,
      labels=labels,
      location=location,
      name=name,
      project=project,
      rules=rules,
      selector=selector,
      service_account=service_account,
      suspended=suspended,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_clouddeploy_automation.newAttrs` constructs a new object with attributes and blocks configured for the `google_clouddeploy_automation`\nTerraform resource.\n\nUnlike [google-beta.google_clouddeploy_automation.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (&#39;/&#39;). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (&#39;[a-z0-9A-Z]&#39;) with dashes (&#39;-&#39;), underscores (&#39;_&#39;), dots (&#39;.&#39;), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(&#39;.&#39;), not longer than 253 characters in total, followed by a slash (&#39;/&#39;). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `delivery_pipeline` (`string`): The delivery_pipeline for the resource\n  - `description` (`string`): Optional. Description of the &#39;Automation&#39;. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 63 characters.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Name of the &#39;Automation&#39;.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `service_account` (`string`): Required. Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.\n  - `suspended` (`bool`): Optional. When Suspended, automation is deactivated from execution. When `null`, the `suspended` field will be omitted from the resulting object.\n  - `rules` (`list[obj]`): Required. List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.rules.new](#fn-rulesnew) constructor.\n  - `selector` (`list[obj]`): Required. Selected resources to which the automation will be applied. When `null`, the `selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.selector.new](#fn-selectornew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_clouddeploy_automation` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    delivery_pipeline,
    location,
    name,
    service_account,
    annotations=null,
    description=null,
    labels=null,
    project=null,
    rules=null,
    selector=null,
    suspended=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    delivery_pipeline: delivery_pipeline,
    description: description,
    labels: labels,
    location: location,
    name: name,
    project: project,
    rules: rules,
    selector: selector,
    service_account: service_account,
    suspended: suspended,
    timeouts: timeouts,
  }),
  rules:: {
    advance_rollout_rule:: {
      '#new':: d.fn(help='\n`google-beta.google_clouddeploy_automation.rules.advance_rollout_rule.new` constructs a new object with attributes and blocks configured for the `advance_rollout_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `source_phases` (`list`): Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: &#39;^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$&#39;. When `null`, the `source_phases` field will be omitted from the resulting object.\n  - `wait` (`string`): Optional. How long to wait after a rollout is finished. When `null`, the `wait` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `advance_rollout_rule` sub block.\n', args=[]),
      new(
        source_phases=null,
        wait=null
      ):: std.prune(a={
        source_phases: source_phases,
        wait: wait,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_clouddeploy_automation.rules.new` constructs a new object with attributes and blocks configured for the `rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `advance_rollout_rule` (`list[obj]`): Optional. The &#39;AdvanceRolloutRule&#39; will automatically advance a successful Rollout. When `null`, the `advance_rollout_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.rules.advance_rollout_rule.new](#fn-rulesadvance_rollout_rulenew) constructor.\n  - `promote_release_rule` (`list[obj]`): Optional. &#39;PromoteReleaseRule&#39; will automatically promote a release from the current target to a specified target. When `null`, the `promote_release_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.rules.promote_release_rule.new](#fn-rulespromote_release_rulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rules` sub block.\n', args=[]),
    new(
      advance_rollout_rule=null,
      promote_release_rule=null
    ):: std.prune(a={
      advance_rollout_rule: advance_rollout_rule,
      promote_release_rule: promote_release_rule,
    }),
    promote_release_rule:: {
      '#new':: d.fn(help='\n`google-beta.google_clouddeploy_automation.rules.promote_release_rule.new` constructs a new object with attributes and blocks configured for the `promote_release_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `destination_phase` (`string`): Optional. The starting phase of the rollout created by this operation. Default to the first phase. When `null`, the `destination_phase` field will be omitted from the resulting object.\n  - `destination_target_id` (`string`): Optional. The ID of the stage in the pipeline to which this &#39;Release&#39; is deploying. If unspecified, default it to the next stage in the promotion flow. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine if the target is one of the stages in the promotion sequence defined in the pipeline. * &#34;@next&#34;, the next target in the promotion sequence. When `null`, the `destination_target_id` field will be omitted from the resulting object.\n  - `wait` (`string`): Optional. How long the release need to be paused until being promoted to the next target. When `null`, the `wait` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `promote_release_rule` sub block.\n', args=[]),
      new(
        destination_phase=null,
        destination_target_id=null,
        wait=null
      ):: std.prune(a={
        destination_phase: destination_phase,
        destination_target_id: destination_target_id,
        wait: wait,
      }),
    },
  },
  selector:: {
    '#new':: d.fn(help='\n`google-beta.google_clouddeploy_automation.selector.new` constructs a new object with attributes and blocks configured for the `selector`\nTerraform sub block.\n\n\n\n**Args**:\n  - `targets` (`list[obj]`): Contains attributes about a target. When `null`, the `targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.selector.targets.new](#fn-selectortargetsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `selector` sub block.\n', args=[]),
    new(
      targets=null
    ):: std.prune(a={
      targets: targets,
    }),
    targets:: {
      '#new':: d.fn(help='\n`google-beta.google_clouddeploy_automation.selector.targets.new` constructs a new object with attributes and blocks configured for the `targets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): Target labels. When `null`, the `labels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `targets` sub block.\n', args=[]),
      new(
        labels=null
      ):: std.prune(a={
        labels: labels,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_clouddeploy_automation.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withDeliveryPipeline':: d.fn(help='`google-beta.string.withDeliveryPipeline` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the delivery_pipeline field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `delivery_pipeline` field.\n', args=[]),
  withDeliveryPipeline(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          delivery_pipeline: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRules':: d.fn(help='`google-beta.list[obj].withRules` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withRulesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRules(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          rules: value,
        },
      },
    },
  },
  '#withRulesMixin':: d.fn(help='`google-beta.list[obj].withRulesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRules](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRulesMixin(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSelector':: d.fn(help='`google-beta.list[obj].withSelector` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the selector field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withSelectorMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `selector` field.\n', args=[]),
  withSelector(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          selector: value,
        },
      },
    },
  },
  '#withSelectorMixin':: d.fn(help='`google-beta.list[obj].withSelectorMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the selector field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withSelector](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `selector` field.\n', args=[]),
  withSelectorMixin(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          selector+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withServiceAccount':: d.fn(help='`google-beta.string.withServiceAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccount(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  '#withSuspended':: d.fn(help='`google-beta.bool.withSuspended` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the suspended field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `suspended` field.\n', args=[]),
  withSuspended(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          suspended: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_clouddeploy_automation+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
