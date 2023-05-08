local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_network_security_authorization_policy', url='', help='`google_network_security_authorization_policy` represents the `google-beta_google_network_security_authorization_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_network_security_authorization_policy.new` injects a new `google-beta_google_network_security_authorization_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_network_security_authorization_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_network_security_authorization_policy` using the reference:\n\n    $._ref.google-beta_google_network_security_authorization_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_network_security_authorization_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `action` (`string`): The action to take when a rule match is found. Possible values are \u0026#34;ALLOW\u0026#34; or \u0026#34;DENY\u0026#34;. Possible values: [\u0026#34;ALLOW\u0026#34;, \u0026#34;DENY\u0026#34;]\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the AuthorizationPolicy resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the authorization policy.\nThe default value is \u0026#39;global\u0026#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the AuthorizationPolicy resource.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `rules` (`list[obj]`): List of rules to match. Note that at least one of the rules must match in order for the action specified in the \u0026#39;action\u0026#39; field to be taken. \nA rule is a match if there is a matching source and destination. If left blank, the action specified in the action field will be applied on every request. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.rules.new](#fn-rulesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    action,
    name,
    description=null,
    labels=null,
    location=null,
    project=null,
    rules=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_security_authorization_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      action=action,
      description=description,
      labels=labels,
      location=location,
      name=name,
      project=project,
      rules=rules,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_network_security_authorization_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_security_authorization_policy`\nTerraform resource.\n\nUnlike [google-beta.google_network_security_authorization_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `action` (`string`): The action to take when a rule match is found. Possible values are &#34;ALLOW&#34; or &#34;DENY&#34;. Possible values: [&#34;ALLOW&#34;, &#34;DENY&#34;]\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the AuthorizationPolicy resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the authorization policy.\nThe default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the AuthorizationPolicy resource.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `rules` (`list[obj]`): List of rules to match. Note that at least one of the rules must match in order for the action specified in the &#39;action&#39; field to be taken. \nA rule is a match if there is a matching source and destination. If left blank, the action specified in the action field will be applied on every request. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.rules.new](#fn-rulesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_security_authorization_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    action,
    name,
    description=null,
    labels=null,
    location=null,
    project=null,
    rules=null,
    timeouts=null
  ):: std.prune(a={
    action: action,
    description: description,
    labels: labels,
    location: location,
    name: name,
    project: project,
    rules: rules,
    timeouts: timeouts,
  }),
  rules:: {
    destinations:: {
      http_header_match:: {
        '#new':: d.fn(help='\n`google-beta.google_network_security_authorization_policy.rules.destinations.http_header_match.new` constructs a new object with attributes and blocks configured for the `http_header_match`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the HTTP header to match. For matching against the HTTP request&#39;s authority, use a headerMatch with the header name &#34;:authority&#34;. For matching a request&#39;s method, use the headerName &#34;:method&#34;.\n  - `regex_match` (`string`): The value of the header must match the regular expression specified in regexMatch. For regular expression grammar, please see: en.cppreference.com/w/cpp/regex/ecmascript For matching against a port specified in the HTTP request, use a headerMatch with headerName set to Host and a regular expression that satisfies the RFC2616 Host header&#39;s port specifier.\n\n**Returns**:\n  - An attribute object that represents the `http_header_match` sub block.\n', args=[]),
        new(
          header_name,
          regex_match
        ):: std.prune(a={
          header_name: header_name,
          regex_match: regex_match,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_network_security_authorization_policy.rules.destinations.new` constructs a new object with attributes and blocks configured for the `destinations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hosts` (`list`): List of host names to match. Matched against the &#34;:authority&#34; header in http requests. At least one host should match. Each host can be an exact match, or a prefix match (example &#34;mydomain.*&#34;) or a suffix match (example &#34;*.myorg.com&#34;) or a presence (any) match &#34;*&#34;.\n  - `methods` (`list`): A list of HTTP methods to match. At least one method should match. Should not be set for gRPC services.\n  - `ports` (`list`): List of destination ports to match. At least one port should match.\n  - `http_header_match` (`list[obj]`): Match against key:value pair in http header. Provides a flexible match based on HTTP headers, for potentially advanced use cases. At least one header should match. \nAvoid using header matches to make authorization decisions unless there is a strong guarantee that requests arrive through a trusted client or proxy. When `null`, the `http_header_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.rules.destinations.http_header_match.new](#fn-rulesruleshttp_header_matchnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `destinations` sub block.\n', args=[]),
      new(
        hosts,
        methods,
        ports,
        http_header_match=null
      ):: std.prune(a={
        hosts: hosts,
        http_header_match: http_header_match,
        methods: methods,
        ports: ports,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_network_security_authorization_policy.rules.new` constructs a new object with attributes and blocks configured for the `rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `destinations` (`list[obj]`): List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers. \nIf not set, the action specified in the &#39;action&#39; field will be applied without any rule checks for the destination. When `null`, the `destinations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.rules.destinations.new](#fn-rulesdestinationsnew) constructor.\n  - `sources` (`list[obj]`): List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ipBlocks match. \nIf not set, the action specified in the &#39;action&#39; field will be applied without any rule checks for the source. When `null`, the `sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.rules.sources.new](#fn-rulessourcesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rules` sub block.\n', args=[]),
    new(
      destinations=null,
      sources=null
    ):: std.prune(a={
      destinations: destinations,
      sources: sources,
    }),
    sources:: {
      '#new':: d.fn(help='\n`google-beta.google_network_security_authorization_policy.rules.sources.new` constructs a new object with attributes and blocks configured for the `sources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_blocks` (`list`): List of CIDR ranges to match based on source IP address. At least one IP block should match. Single IP (e.g., &#34;1.2.3.4&#34;) and CIDR (e.g., &#34;1.2.3.0/24&#34;) are supported. Authorization based on source IP alone should be avoided. \nThe IP addresses of any load balancers or proxies should be considered untrusted. When `null`, the `ip_blocks` field will be omitted from the resulting object.\n  - `principals` (`list`): List of peer identities to match for authorization. At least one principal should match. Each peer can be an exact match, or a prefix match (example, &#34;namespace/*&#34;) or a suffix match (example, &#34;*/service-account&#34;) or a presence match &#34;*&#34;. \nAuthorization based on the principal name without certificate validation (configured by ServerTlsPolicy resource) is considered insecure. When `null`, the `principals` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `sources` sub block.\n', args=[]),
      new(
        ip_blocks=null,
        principals=null
      ):: std.prune(a={
        ip_blocks: ip_blocks,
        principals: principals,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_network_security_authorization_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_network_security_authorization_policy+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_network_security_authorization_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_security_authorization_policy+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_network_security_authorization_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_security_authorization_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_security_authorization_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRules':: d.fn(help='`google-beta.list[obj].withRules` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withRulesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRules(resourceLabel, value): {
    resource+: {
      google_network_security_authorization_policy+: {
        [resourceLabel]+: {
          rules: value,
        },
      },
    },
  },
  '#withRulesMixin':: d.fn(help='`google-beta.list[obj].withRulesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRules](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRulesMixin(resourceLabel, value): {
    resource+: {
      google_network_security_authorization_policy+: {
        [resourceLabel]+: {
          rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_security_authorization_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_security_authorization_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
