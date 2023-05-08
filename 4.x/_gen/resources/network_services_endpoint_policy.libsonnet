local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_network_services_endpoint_policy', url='', help='`google_network_services_endpoint_policy` represents the `google-beta_google_network_services_endpoint_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  endpoint_matcher:: {
    metadata_label_matcher:: {
      metadata_labels:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_endpoint_policy.endpoint_matcher.metadata_label_matcher.metadata_labels.new` constructs a new object with attributes and blocks configured for the `metadata_labels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `label_name` (`string`): Required. Label name presented as key in xDS Node Metadata.\n  - `label_value` (`string`): Required. Label value presented as value corresponding to the above key, in xDS Node Metadata.\n\n**Returns**:\n  - An attribute object that represents the `metadata_labels` sub block.\n', args=[]),
        new(
          label_name,
          label_value
        ):: std.prune(a={
          label_name: label_name,
          label_value: label_value,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_network_services_endpoint_policy.endpoint_matcher.metadata_label_matcher.new` constructs a new object with attributes and blocks configured for the `metadata_label_matcher`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata_label_match_criteria` (`string`): Specifies how matching should be done. Possible values: [&#34;MATCH_ANY&#34;, &#34;MATCH_ALL&#34;]\n  - `metadata_labels` (`list[obj]`): The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria When `null`, the `metadata_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.endpoint_matcher.metadata_label_matcher.metadata_labels.new](#fn-endpoint_matcherendpoint_matchermetadata_labelsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `metadata_label_matcher` sub block.\n', args=[]),
      new(
        metadata_label_match_criteria,
        metadata_labels=null
      ):: std.prune(a={
        metadata_label_match_criteria: metadata_label_match_criteria,
        metadata_labels: metadata_labels,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_network_services_endpoint_policy.endpoint_matcher.new` constructs a new object with attributes and blocks configured for the `endpoint_matcher`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata_label_matcher` (`list[obj]`): The matcher is based on node metadata presented by xDS clients. When `null`, the `metadata_label_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.endpoint_matcher.metadata_label_matcher.new](#fn-endpoint_matchermetadata_label_matchernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `endpoint_matcher` sub block.\n', args=[]),
    new(
      metadata_label_matcher=null
    ):: std.prune(a={
      metadata_label_matcher: metadata_label_matcher,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_network_services_endpoint_policy.new` injects a new `google-beta_google_network_services_endpoint_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_network_services_endpoint_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_network_services_endpoint_policy` using the reference:\n\n    $._ref.google-beta_google_network_services_endpoint_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_network_services_endpoint_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `authorization_policy` (`string`): This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints. When `null`, the `authorization_policy` field will be omitted from the resulting object.\n  - `client_tls_policy` (`string`): A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints. When `null`, the `client_tls_policy` field will be omitted from the resulting object.\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the TcpRoute resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the EndpointPolicy resource.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `server_tls_policy` (`string`): A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends. When `null`, the `server_tls_policy` field will be omitted from the resulting object.\n  - `type` (`string`): The type of endpoint policy. This is primarily used to validate the configuration. Possible values: [\u0026#34;SIDECAR_PROXY\u0026#34;, \u0026#34;GRPC_SERVER\u0026#34;]\n  - `endpoint_matcher` (`list[obj]`): Required. A matcher that selects endpoints to which the policies should be applied. When `null`, the `endpoint_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.endpoint_matcher.new](#fn-endpoint_matchernew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.timeouts.new](#fn-timeoutsnew) constructor.\n  - `traffic_port_selector` (`list[obj]`): Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports. When `null`, the `traffic_port_selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.traffic_port_selector.new](#fn-traffic_port_selectornew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    type,
    authorization_policy=null,
    client_tls_policy=null,
    description=null,
    endpoint_matcher=null,
    labels=null,
    project=null,
    server_tls_policy=null,
    timeouts=null,
    traffic_port_selector=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_services_endpoint_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      authorization_policy=authorization_policy,
      client_tls_policy=client_tls_policy,
      description=description,
      endpoint_matcher=endpoint_matcher,
      labels=labels,
      name=name,
      project=project,
      server_tls_policy=server_tls_policy,
      timeouts=timeouts,
      traffic_port_selector=traffic_port_selector,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_network_services_endpoint_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_services_endpoint_policy`\nTerraform resource.\n\nUnlike [google-beta.google_network_services_endpoint_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `authorization_policy` (`string`): This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints. When `null`, the `authorization_policy` field will be omitted from the resulting object.\n  - `client_tls_policy` (`string`): A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints. When `null`, the `client_tls_policy` field will be omitted from the resulting object.\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the TcpRoute resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the EndpointPolicy resource.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `server_tls_policy` (`string`): A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends. When `null`, the `server_tls_policy` field will be omitted from the resulting object.\n  - `type` (`string`): The type of endpoint policy. This is primarily used to validate the configuration. Possible values: [&#34;SIDECAR_PROXY&#34;, &#34;GRPC_SERVER&#34;]\n  - `endpoint_matcher` (`list[obj]`): Required. A matcher that selects endpoints to which the policies should be applied. When `null`, the `endpoint_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.endpoint_matcher.new](#fn-endpoint_matchernew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.timeouts.new](#fn-timeoutsnew) constructor.\n  - `traffic_port_selector` (`list[obj]`): Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports. When `null`, the `traffic_port_selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.traffic_port_selector.new](#fn-traffic_port_selectornew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_services_endpoint_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    type,
    authorization_policy=null,
    client_tls_policy=null,
    description=null,
    endpoint_matcher=null,
    labels=null,
    project=null,
    server_tls_policy=null,
    timeouts=null,
    traffic_port_selector=null
  ):: std.prune(a={
    authorization_policy: authorization_policy,
    client_tls_policy: client_tls_policy,
    description: description,
    endpoint_matcher: endpoint_matcher,
    labels: labels,
    name: name,
    project: project,
    server_tls_policy: server_tls_policy,
    timeouts: timeouts,
    traffic_port_selector: traffic_port_selector,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_network_services_endpoint_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  traffic_port_selector:: {
    '#new':: d.fn(help='\n`google-beta.google_network_services_endpoint_policy.traffic_port_selector.new` constructs a new object with attributes and blocks configured for the `traffic_port_selector`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ports` (`list`): List of ports. Can be port numbers or port range (example, [80-90] specifies all ports from 80 to 90, including 80 and 90) or named ports or * to specify all ports. If the list is empty, all ports are selected.\n\n**Returns**:\n  - An attribute object that represents the `traffic_port_selector` sub block.\n', args=[]),
    new(
      ports
    ):: std.prune(a={
      ports: ports,
    }),
  },
  '#withAuthorizationPolicy':: d.fn(help='`google-beta.string.withAuthorizationPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the authorization_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `authorization_policy` field.\n', args=[]),
  withAuthorizationPolicy(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          authorization_policy: value,
        },
      },
    },
  },
  '#withClientTlsPolicy':: d.fn(help='`google-beta.string.withClientTlsPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the client_tls_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `client_tls_policy` field.\n', args=[]),
  withClientTlsPolicy(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          client_tls_policy: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEndpointMatcher':: d.fn(help='`google-beta.list[obj].withEndpointMatcher` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the endpoint_matcher field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withEndpointMatcherMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `endpoint_matcher` field.\n', args=[]),
  withEndpointMatcher(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          endpoint_matcher: value,
        },
      },
    },
  },
  '#withEndpointMatcherMixin':: d.fn(help='`google-beta.list[obj].withEndpointMatcherMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the endpoint_matcher field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withEndpointMatcher](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `endpoint_matcher` field.\n', args=[]),
  withEndpointMatcherMixin(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          endpoint_matcher+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withServerTlsPolicy':: d.fn(help='`google-beta.string.withServerTlsPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the server_tls_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `server_tls_policy` field.\n', args=[]),
  withServerTlsPolicy(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          server_tls_policy: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTrafficPortSelector':: d.fn(help='`google-beta.list[obj].withTrafficPortSelector` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the traffic_port_selector field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withTrafficPortSelectorMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `traffic_port_selector` field.\n', args=[]),
  withTrafficPortSelector(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          traffic_port_selector: value,
        },
      },
    },
  },
  '#withTrafficPortSelectorMixin':: d.fn(help='`google-beta.list[obj].withTrafficPortSelectorMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the traffic_port_selector field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withTrafficPortSelector](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `traffic_port_selector` field.\n', args=[]),
  withTrafficPortSelectorMixin(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          traffic_port_selector+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withType':: d.fn(help='`google-beta.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_network_services_endpoint_policy+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
