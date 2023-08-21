local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_compute_region_security_policy_rule', url='', help='`google_compute_region_security_policy_rule` represents the `google-beta_google_compute_region_security_policy_rule` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  match:: {
    config:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_region_security_policy_rule.match.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `src_ip_ranges` (`list`): CIDR IP address range. Maximum number of srcIpRanges allowed is 10. When `null`, the `src_ip_ranges` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
      new(
        src_ip_ranges=null
      ):: std.prune(a={
        src_ip_ranges: src_ip_ranges,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_compute_region_security_policy_rule.match.new` constructs a new object with attributes and blocks configured for the `match`\nTerraform sub block.\n\n\n\n**Args**:\n  - `versioned_expr` (`string`): Preconfigured versioned expression. If this field is specified, config must also be specified.\nAvailable preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding srcIpRange field in config. Possible values: [&#34;SRC_IPS_V1&#34;] When `null`, the `versioned_expr` field will be omitted from the resulting object.\n  - `config` (`list[obj]`): The configuration options available when specifying versionedExpr.\nThis field must be specified if versionedExpr is specified and cannot be specified if versionedExpr is not specified. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.match.config.new](#fn-matchconfignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `match` sub block.\n', args=[]),
    new(
      config=null,
      versioned_expr=null
    ):: std.prune(a={
      config: config,
      versioned_expr: versioned_expr,
    }),
  },
  network_match:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_region_security_policy_rule.network_match.new` constructs a new object with attributes and blocks configured for the `network_match`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dest_ip_ranges` (`list`): Destination IPv4/IPv6 addresses or CIDR prefixes, in standard text format. When `null`, the `dest_ip_ranges` field will be omitted from the resulting object.\n  - `dest_ports` (`list`): Destination port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. &#34;80&#34;) or range (e.g. &#34;0-1023&#34;). When `null`, the `dest_ports` field will be omitted from the resulting object.\n  - `ip_protocols` (`list`): IPv4 protocol / IPv6 next header (after extension headers). Each element can be an 8-bit unsigned decimal number (e.g. &#34;6&#34;), range (e.g. &#34;253-254&#34;), or one of the following protocol names: &#34;tcp&#34;, &#34;udp&#34;, &#34;icmp&#34;, &#34;esp&#34;, &#34;ah&#34;, &#34;ipip&#34;, or &#34;sctp&#34;. When `null`, the `ip_protocols` field will be omitted from the resulting object.\n  - `src_asns` (`list`): BGP Autonomous System Number associated with the source IP address. When `null`, the `src_asns` field will be omitted from the resulting object.\n  - `src_ip_ranges` (`list`): Source IPv4/IPv6 addresses or CIDR prefixes, in standard text format. When `null`, the `src_ip_ranges` field will be omitted from the resulting object.\n  - `src_ports` (`list`): Source port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. &#34;80&#34;) or range (e.g. &#34;0-1023&#34;). When `null`, the `src_ports` field will be omitted from the resulting object.\n  - `src_region_codes` (`list`): Two-letter ISO 3166-1 alpha-2 country code associated with the source IP address. When `null`, the `src_region_codes` field will be omitted from the resulting object.\n  - `user_defined_fields` (`list[obj]`): User-defined fields. Each element names a defined field and lists the matching values for that field. When `null`, the `user_defined_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.network_match.user_defined_fields.new](#fn-network_matchuser_defined_fieldsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `network_match` sub block.\n', args=[]),
    new(
      dest_ip_ranges=null,
      dest_ports=null,
      ip_protocols=null,
      src_asns=null,
      src_ip_ranges=null,
      src_ports=null,
      src_region_codes=null,
      user_defined_fields=null
    ):: std.prune(a={
      dest_ip_ranges: dest_ip_ranges,
      dest_ports: dest_ports,
      ip_protocols: ip_protocols,
      src_asns: src_asns,
      src_ip_ranges: src_ip_ranges,
      src_ports: src_ports,
      src_region_codes: src_region_codes,
      user_defined_fields: user_defined_fields,
    }),
    user_defined_fields:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_region_security_policy_rule.network_match.user_defined_fields.new` constructs a new object with attributes and blocks configured for the `user_defined_fields`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the user-defined field, as given in the definition. When `null`, the `name` field will be omitted from the resulting object.\n  - `values` (`list`): Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with &#34;0x&#34;) number (e.g. &#34;64&#34;) or range (e.g. &#34;0x400-0x7ff&#34;). When `null`, the `values` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `user_defined_fields` sub block.\n', args=[]),
      new(
        name=null,
        values=null
      ):: std.prune(a={
        name: name,
        values: values,
      }),
    },
  },
  '#new':: d.fn(help="\n`google-beta.google_compute_region_security_policy_rule.new` injects a new `google-beta_google_compute_region_security_policy_rule` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_compute_region_security_policy_rule.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_compute_region_security_policy_rule` using the reference:\n\n    $._ref.google-beta_google_compute_region_security_policy_rule.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_compute_region_security_policy_rule.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `action` (`string`): The Action to perform when the rule is matched. The following are the valid actions:\n\n* allow: allow access to target.\n\n* deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.\n\n* rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.\n\n* redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.\n\n* throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.\n  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `preview` (`bool`): If set to true, the specified action is not enforced. When `null`, the `preview` field will be omitted from the resulting object.\n  - `priority` (`number`): An integer indicating the priority of a rule in the list.\nThe priority must be a positive value between 0 and 2147483647.\nRules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created Region Security Policy rule should reside.\n  - `security_policy` (`string`): The name of the security policy this rule belongs to.\n  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against.\nIf it evaluates to true, the corresponding \u0026#39;action\u0026#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.match.new](#fn-matchnew) constructor.\n  - `network_match` (`list[obj]`): A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding \u0026#39;action\u0026#39; is enforced.\nThe match criteria for a rule consists of built-in match fields (like \u0026#39;srcIpRanges\u0026#39;) and potentially multiple user-defined match fields (\u0026#39;userDefinedFields\u0026#39;).\nField values may be extracted directly from the packet or derived from it (e.g. \u0026#39;srcRegionCodes\u0026#39;). Some fields may not be present in every packet (e.g. \u0026#39;srcPorts\u0026#39;). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds.\nEach match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it\u0026#39;s not required to be present. For strings specifying \u0026#39;*\u0026#39; is also equivalent to match all.\nFor a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet.\nExample:\nnetworkMatch: srcIpRanges: - \u0026#34;192.0.2.0/24\u0026#34; - \u0026#34;198.51.100.0/24\u0026#34; userDefinedFields: - name: \u0026#34;ipv4_fragment_offset\u0026#34; values: - \u0026#34;1-0x1fff\u0026#34;\nThe above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named \u0026#34;ipv4_fragment_offset\u0026#34; with a value between 1 and 0x1fff inclusive When `null`, the `network_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.network_match.new](#fn-network_matchnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    action,
    priority,
    region,
    security_policy,
    description=null,
    match=null,
    network_match=null,
    preview=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_security_policy_rule',
    label=resourceLabel,
    attrs=self.newAttrs(
      action=action,
      description=description,
      match=match,
      network_match=network_match,
      preview=preview,
      priority=priority,
      project=project,
      region=region,
      security_policy=security_policy,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_compute_region_security_policy_rule.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_region_security_policy_rule`\nTerraform resource.\n\nUnlike [google-beta.google_compute_region_security_policy_rule.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `action` (`string`): The Action to perform when the rule is matched. The following are the valid actions:\n\n* allow: allow access to target.\n\n* deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.\n\n* rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.\n\n* redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.\n\n* throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.\n  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `preview` (`bool`): If set to true, the specified action is not enforced. When `null`, the `preview` field will be omitted from the resulting object.\n  - `priority` (`number`): An integer indicating the priority of a rule in the list.\nThe priority must be a positive value between 0 and 2147483647.\nRules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created Region Security Policy rule should reside.\n  - `security_policy` (`string`): The name of the security policy this rule belongs to.\n  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against.\nIf it evaluates to true, the corresponding &#39;action&#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.match.new](#fn-matchnew) constructor.\n  - `network_match` (`list[obj]`): A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding &#39;action&#39; is enforced.\nThe match criteria for a rule consists of built-in match fields (like &#39;srcIpRanges&#39;) and potentially multiple user-defined match fields (&#39;userDefinedFields&#39;).\nField values may be extracted directly from the packet or derived from it (e.g. &#39;srcRegionCodes&#39;). Some fields may not be present in every packet (e.g. &#39;srcPorts&#39;). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds.\nEach match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it&#39;s not required to be present. For strings specifying &#39;*&#39; is also equivalent to match all.\nFor a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet.\nExample:\nnetworkMatch: srcIpRanges: - &#34;192.0.2.0/24&#34; - &#34;198.51.100.0/24&#34; userDefinedFields: - name: &#34;ipv4_fragment_offset&#34; values: - &#34;1-0x1fff&#34;\nThe above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named &#34;ipv4_fragment_offset&#34; with a value between 1 and 0x1fff inclusive When `null`, the `network_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.network_match.new](#fn-network_matchnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_region_security_policy_rule` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    action,
    priority,
    region,
    security_policy,
    description=null,
    match=null,
    network_match=null,
    preview=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    action: action,
    description: description,
    match: match,
    network_match: network_match,
    preview: preview,
    priority: priority,
    project: project,
    region: region,
    security_policy: security_policy,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_region_security_policy_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAction':: d.fn(help='`google-beta.string.withAction` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the action field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `action` field.\n', args=[]),
  withAction(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy_rule+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withMatch':: d.fn(help='`google-beta.list[obj].withMatch` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the match field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withMatchMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `match` field.\n', args=[]),
  withMatch(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy_rule+: {
        [resourceLabel]+: {
          match: value,
        },
      },
    },
  },
  '#withMatchMixin':: d.fn(help='`google-beta.list[obj].withMatchMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the match field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withMatch](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `match` field.\n', args=[]),
  withMatchMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy_rule+: {
        [resourceLabel]+: {
          match+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNetworkMatch':: d.fn(help='`google-beta.list[obj].withNetworkMatch` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_match field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withNetworkMatchMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_match` field.\n', args=[]),
  withNetworkMatch(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy_rule+: {
        [resourceLabel]+: {
          network_match: value,
        },
      },
    },
  },
  '#withNetworkMatchMixin':: d.fn(help='`google-beta.list[obj].withNetworkMatchMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_match field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withNetworkMatch](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_match` field.\n', args=[]),
  withNetworkMatchMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy_rule+: {
        [resourceLabel]+: {
          network_match+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPreview':: d.fn(help='`google-beta.bool.withPreview` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the preview field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `preview` field.\n', args=[]),
  withPreview(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy_rule+: {
        [resourceLabel]+: {
          preview: value,
        },
      },
    },
  },
  '#withPriority':: d.fn(help='`google-beta.number.withPriority` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `priority` field.\n', args=[]),
  withPriority(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy_rule+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy_rule+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy_rule+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withSecurityPolicy':: d.fn(help='`google-beta.string.withSecurityPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the security_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `security_policy` field.\n', args=[]),
  withSecurityPolicy(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy_rule+: {
        [resourceLabel]+: {
          security_policy: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
