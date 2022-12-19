local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_compute_organization_security_policy_rule', url='', help='`google_compute_organization_security_policy_rule` represents the `google-beta_google_compute_organization_security_policy_rule` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  match:: {
    config:: {
      layer4_config:: {
        '#new':: d.fn(help='\n`google-beta.google_compute_organization_security_policy_rule.match.config.layer4_config.new` constructs a new object with attributes and blocks configured for the `layer4_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_protocol` (`string`): The IP protocol to which this rule applies. The protocol\ntype is required when creating a firewall rule.\nThis value can either be one of the following well\nknown protocol strings (tcp, udp, icmp, esp, ah, ipip, sctp),\nor the IP protocol number.\n  - `ports` (`list`): An optional list of ports to which this rule applies. This field\nis only applicable for UDP or TCP protocol. Each entry must be\neither an integer or a range. If not specified, this rule\napplies to connections through any port.\n\nExample inputs include: [&#34;22&#34;], [&#34;80&#34;,&#34;443&#34;], and\n[&#34;12345-12349&#34;]. When `null`, the `ports` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `layer4_config` sub block.\n', args=[]),
        new(
          ip_protocol,
          ports=null
        ):: std.prune(a={
          ip_protocol: ip_protocol,
          ports: ports,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_compute_organization_security_policy_rule.match.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dest_ip_ranges` (`list`): Destination IP address range in CIDR format. Required for\nEGRESS rules. When `null`, the `dest_ip_ranges` field will be omitted from the resulting object.\n  - `src_ip_ranges` (`list`): Source IP address range in CIDR format. Required for\nINGRESS rules. When `null`, the `src_ip_ranges` field will be omitted from the resulting object.\n  - `layer4_config` (`list[obj]`): Pairs of IP protocols and ports that the rule should match. When `null`, the `layer4_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy_rule.match.config.layer4_config.new](#fn-configlayer4confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
      new(
        dest_ip_ranges=null,
        layer4_config=null,
        src_ip_ranges=null
      ):: std.prune(a={
        dest_ip_ranges: dest_ip_ranges,
        layer4_config: layer4_config,
        src_ip_ranges: src_ip_ranges,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_compute_organization_security_policy_rule.match.new` constructs a new object with attributes and blocks configured for the `match`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): A description of the rule. When `null`, the `description` field will be omitted from the resulting object.\n  - `versioned_expr` (`string`): Preconfigured versioned expression. For organization security policy rules,\nthe only supported type is &#34;FIREWALL&#34;. Default value: &#34;FIREWALL&#34; Possible values: [&#34;FIREWALL&#34;] When `null`, the `versioned_expr` field will be omitted from the resulting object.\n  - `config` (`list[obj]`): The configuration options for matching the rule. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy_rule.match.config.new](#fn-matchconfignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `match` sub block.\n', args=[]),
    new(
      config=null,
      description=null,
      versioned_expr=null
    ):: std.prune(a={
      config: config,
      description: description,
      versioned_expr: versioned_expr,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_compute_organization_security_policy_rule.new` injects a new `google-beta_google_compute_organization_security_policy_rule` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_compute_organization_security_policy_rule.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_compute_organization_security_policy_rule` using the reference:\n\n    $._ref.google-beta_google_compute_organization_security_policy_rule.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_compute_organization_security_policy_rule.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `action` (`string`): The Action to perform when the client connection triggers the rule. Can currently be either\n\u0026#34;allow\u0026#34;, \u0026#34;deny\u0026#34; or \u0026#34;goto_next\u0026#34;.\n  - `description` (`string`): A description of the rule. When `null`, the `description` field will be omitted from the resulting object.\n  - `direction` (`string`): The direction in which this rule applies. If unspecified an INGRESS rule is created. Possible values: [\u0026#34;INGRESS\u0026#34;, \u0026#34;EGRESS\u0026#34;] When `null`, the `direction` field will be omitted from the resulting object.\n  - `enable_logging` (`bool`): Denotes whether to enable logging for a particular rule.\nIf logging is enabled, logs will be exported to the\nconfigured export destination in Stackdriver. When `null`, the `enable_logging` field will be omitted from the resulting object.\n  - `policy_id` (`string`): The ID of the OrganizationSecurityPolicy this rule applies to.\n  - `preview` (`bool`): If set to true, the specified action is not enforced. When `null`, the `preview` field will be omitted from the resulting object.\n  - `priority` (`number`): An integer indicating the priority of a rule in the list. The priority must be a value\nbetween 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the\nhighest priority and 2147483647 is the lowest prority.\n  - `target_resources` (`list`): A list of network resource URLs to which this rule applies.\nThis field allows you to control which network\u0026#39;s VMs get\nthis rule. If this field is left blank, all VMs\nwithin the organization will receive the rule. When `null`, the `target_resources` field will be omitted from the resulting object.\n  - `target_service_accounts` (`list`): A list of service accounts indicating the sets of\ninstances that are applied with this rule. When `null`, the `target_service_accounts` field will be omitted from the resulting object.\n  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding \u0026#39;action\u0026#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy_rule.match.new](#fn-googlecomputeorganizationsecuritypolicyrulematchnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy_rule.timeouts.new](#fn-googlecomputeorganizationsecuritypolicyruletimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    action,
    policy_id,
    priority,
    description=null,
    direction=null,
    enable_logging=null,
    match=null,
    preview=null,
    target_resources=null,
    target_service_accounts=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_organization_security_policy_rule',
    label=resourceLabel,
    attrs=self.newAttrs(
      action=action,
      description=description,
      direction=direction,
      enable_logging=enable_logging,
      match=match,
      policy_id=policy_id,
      preview=preview,
      priority=priority,
      target_resources=target_resources,
      target_service_accounts=target_service_accounts,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_compute_organization_security_policy_rule.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_organization_security_policy_rule`\nTerraform resource.\n\nUnlike [google-beta.google_compute_organization_security_policy_rule.new](#fn-googlecomputeorganizationsecuritypolicyrulenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `action` (`string`): The Action to perform when the client connection triggers the rule. Can currently be either\n&#34;allow&#34;, &#34;deny&#34; or &#34;goto_next&#34;.\n  - `description` (`string`): A description of the rule. When `null`, the `description` field will be omitted from the resulting object.\n  - `direction` (`string`): The direction in which this rule applies. If unspecified an INGRESS rule is created. Possible values: [&#34;INGRESS&#34;, &#34;EGRESS&#34;] When `null`, the `direction` field will be omitted from the resulting object.\n  - `enable_logging` (`bool`): Denotes whether to enable logging for a particular rule.\nIf logging is enabled, logs will be exported to the\nconfigured export destination in Stackdriver. When `null`, the `enable_logging` field will be omitted from the resulting object.\n  - `policy_id` (`string`): The ID of the OrganizationSecurityPolicy this rule applies to.\n  - `preview` (`bool`): If set to true, the specified action is not enforced. When `null`, the `preview` field will be omitted from the resulting object.\n  - `priority` (`number`): An integer indicating the priority of a rule in the list. The priority must be a value\nbetween 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the\nhighest priority and 2147483647 is the lowest prority.\n  - `target_resources` (`list`): A list of network resource URLs to which this rule applies.\nThis field allows you to control which network&#39;s VMs get\nthis rule. If this field is left blank, all VMs\nwithin the organization will receive the rule. When `null`, the `target_resources` field will be omitted from the resulting object.\n  - `target_service_accounts` (`list`): A list of service accounts indicating the sets of\ninstances that are applied with this rule. When `null`, the `target_service_accounts` field will be omitted from the resulting object.\n  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding &#39;action&#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy_rule.match.new](#fn-googlecomputeorganizationsecuritypolicyrulematchnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy_rule.timeouts.new](#fn-googlecomputeorganizationsecuritypolicyruletimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_organization_security_policy_rule` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    action,
    policy_id,
    priority,
    description=null,
    direction=null,
    enable_logging=null,
    match=null,
    preview=null,
    target_resources=null,
    target_service_accounts=null,
    timeouts=null
  ):: std.prune(a={
    action: action,
    description: description,
    direction: direction,
    enable_logging: enable_logging,
    match: match,
    policy_id: policy_id,
    preview: preview,
    priority: priority,
    target_resources: target_resources,
    target_service_accounts: target_service_accounts,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_organization_security_policy_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAction':: d.fn(help='`google-beta.google_compute_organization_security_policy_rule.withAction` constructs a mixin object that can be merged into the `google_compute_organization_security_policy_rule`\nTerraform resource block to set or update the action field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `action` field.\n', args=[]),
  withAction(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.google_compute_organization_security_policy_rule.withDescription` constructs a mixin object that can be merged into the `google_compute_organization_security_policy_rule`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDirection':: d.fn(help='`google-beta.google_compute_organization_security_policy_rule.withDirection` constructs a mixin object that can be merged into the `google_compute_organization_security_policy_rule`\nTerraform resource block to set or update the direction field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `direction` field.\n', args=[]),
  withDirection(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          direction: value,
        },
      },
    },
  },
  '#withEnableLogging':: d.fn(help='`google-beta.google_compute_organization_security_policy_rule.withEnableLogging` constructs a mixin object that can be merged into the `google_compute_organization_security_policy_rule`\nTerraform resource block to set or update the enable_logging field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `enable_logging` field.\n', args=[]),
  withEnableLogging(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          enable_logging: value,
        },
      },
    },
  },
  '#withMatch':: d.fn(help='`google-beta.google_compute_organization_security_policy_rule.withMatch` constructs a mixin object that can be merged into the `google_compute_organization_security_policy_rule`\nTerraform resource block to set or update the match field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `match` field.\n', args=[]),
  withMatch(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          match: value,
        },
      },
    },
  },
  '#withMatchMixin':: d.fn(help='`google-beta.google_compute_organization_security_policy_rule.withMatchMixin` constructs a mixin object that can be merged into the `google_compute_organization_security_policy_rule`\nTerraform resource block to set or update the match field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.google_compute_organization_security_policy_rule.withMatch](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `match` field.\n', args=[]),
  withMatchMixin(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          match+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPolicyId':: d.fn(help='`google-beta.google_compute_organization_security_policy_rule.withPolicyId` constructs a mixin object that can be merged into the `google_compute_organization_security_policy_rule`\nTerraform resource block to set or update the policy_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `policy_id` field.\n', args=[]),
  withPolicyId(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          policy_id: value,
        },
      },
    },
  },
  '#withPreview':: d.fn(help='`google-beta.google_compute_organization_security_policy_rule.withPreview` constructs a mixin object that can be merged into the `google_compute_organization_security_policy_rule`\nTerraform resource block to set or update the preview field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `preview` field.\n', args=[]),
  withPreview(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          preview: value,
        },
      },
    },
  },
  '#withPriority':: d.fn(help='`google-beta.google_compute_organization_security_policy_rule.withPriority` constructs a mixin object that can be merged into the `google_compute_organization_security_policy_rule`\nTerraform resource block to set or update the priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `priority` field.\n', args=[]),
  withPriority(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  '#withTargetResources':: d.fn(help='`google-beta.google_compute_organization_security_policy_rule.withTargetResources` constructs a mixin object that can be merged into the `google_compute_organization_security_policy_rule`\nTerraform resource block to set or update the target_resources field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `target_resources` field.\n', args=[]),
  withTargetResources(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          target_resources: value,
        },
      },
    },
  },
  '#withTargetServiceAccounts':: d.fn(help='`google-beta.google_compute_organization_security_policy_rule.withTargetServiceAccounts` constructs a mixin object that can be merged into the `google_compute_organization_security_policy_rule`\nTerraform resource block to set or update the target_service_accounts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `target_service_accounts` field.\n', args=[]),
  withTargetServiceAccounts(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          target_service_accounts: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.google_compute_organization_security_policy_rule.withTimeouts` constructs a mixin object that can be merged into the `google_compute_organization_security_policy_rule`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.google_compute_organization_security_policy_rule.withTimeoutsMixin` constructs a mixin object that can be merged into the `google_compute_organization_security_policy_rule`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.google_compute_organization_security_policy_rule.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
