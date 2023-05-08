local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_network_services_grpc_route', url='', help='`google_network_services_grpc_route` represents the `google-beta_google_network_services_grpc_route` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_network_services_grpc_route.new` injects a new `google-beta_google_network_services_grpc_route` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_network_services_grpc_route.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_network_services_grpc_route` using the reference:\n\n    $._ref.google-beta_google_network_services_grpc_route.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_network_services_grpc_route.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `gateways` (`list`): List of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway. When `null`, the `gateways` field will be omitted from the resulting object.\n  - `hostnames` (`list`): Required. Service hostnames with an optional port for which this route describes traffic.\n  - `labels` (`obj`): Set of label tags associated with the GrpcRoute resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `meshes` (`list`): List of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh. When `null`, the `meshes` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the GrpcRoute resource.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `rules` (`list[obj]`): Rules that define how traffic is routed and handled. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.new](#fn-rulesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    hostnames,
    name,
    description=null,
    gateways=null,
    labels=null,
    meshes=null,
    project=null,
    rules=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_services_grpc_route',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      gateways=gateways,
      hostnames=hostnames,
      labels=labels,
      meshes=meshes,
      name=name,
      project=project,
      rules=rules,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_network_services_grpc_route.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_services_grpc_route`\nTerraform resource.\n\nUnlike [google-beta.google_network_services_grpc_route.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `gateways` (`list`): List of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway. When `null`, the `gateways` field will be omitted from the resulting object.\n  - `hostnames` (`list`): Required. Service hostnames with an optional port for which this route describes traffic.\n  - `labels` (`obj`): Set of label tags associated with the GrpcRoute resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `meshes` (`list`): List of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh. When `null`, the `meshes` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the GrpcRoute resource.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `rules` (`list[obj]`): Rules that define how traffic is routed and handled. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.new](#fn-rulesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_services_grpc_route` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    hostnames,
    name,
    description=null,
    gateways=null,
    labels=null,
    meshes=null,
    project=null,
    rules=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    gateways: gateways,
    hostnames: hostnames,
    labels: labels,
    meshes: meshes,
    name: name,
    project: project,
    rules: rules,
    timeouts: timeouts,
  }),
  rules:: {
    action:: {
      destinations:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_grpc_route.rules.action.destinations.new` constructs a new object with attributes and blocks configured for the `destinations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service_name` (`string`): The URL of a BackendService to route traffic to. When `null`, the `service_name` field will be omitted from the resulting object.\n  - `weight` (`number`): Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. When `null`, the `weight` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `destinations` sub block.\n', args=[]),
        new(
          service_name=null,
          weight=null
        ):: std.prune(a={
          service_name: service_name,
          weight: weight,
        }),
      },
      fault_injection_policy:: {
        abort:: {
          '#new':: d.fn(help='\n`google-beta.google_network_services_grpc_route.rules.action.fault_injection_policy.abort.new` constructs a new object with attributes and blocks configured for the `abort`\nTerraform sub block.\n\n\n\n**Args**:\n  - `http_status` (`number`): The HTTP status code used to abort the request. When `null`, the `http_status` field will be omitted from the resulting object.\n  - `percentage` (`number`): The percentage of traffic which will be aborted. When `null`, the `percentage` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `abort` sub block.\n', args=[]),
          new(
            http_status=null,
            percentage=null
          ):: std.prune(a={
            http_status: http_status,
            percentage: percentage,
          }),
        },
        delay:: {
          '#new':: d.fn(help='\n`google-beta.google_network_services_grpc_route.rules.action.fault_injection_policy.delay.new` constructs a new object with attributes and blocks configured for the `delay`\nTerraform sub block.\n\n\n\n**Args**:\n  - `fixed_delay` (`string`): Specify a fixed delay before forwarding the request. When `null`, the `fixed_delay` field will be omitted from the resulting object.\n  - `percentage` (`number`): The percentage of traffic on which delay will be injected. When `null`, the `percentage` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `delay` sub block.\n', args=[]),
          new(
            fixed_delay=null,
            percentage=null
          ):: std.prune(a={
            fixed_delay: fixed_delay,
            percentage: percentage,
          }),
        },
        '#new':: d.fn(help='\n`google-beta.google_network_services_grpc_route.rules.action.fault_injection_policy.new` constructs a new object with attributes and blocks configured for the `fault_injection_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `abort` (`list[obj]`): Specification of how client requests are aborted as part of fault injection before being sent to a destination. When `null`, the `abort` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.action.fault_injection_policy.abort.new](#fn-rulesrulesactionabortnew) constructor.\n  - `delay` (`list[obj]`): Specification of how client requests are delayed as part of fault injection before being sent to a destination. When `null`, the `delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.action.fault_injection_policy.delay.new](#fn-rulesrulesactiondelaynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `fault_injection_policy` sub block.\n', args=[]),
        new(
          abort=null,
          delay=null
        ):: std.prune(a={
          abort: abort,
          delay: delay,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_network_services_grpc_route.rules.action.new` constructs a new object with attributes and blocks configured for the `action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `timeout` (`string`): Specifies the timeout for selected route. When `null`, the `timeout` field will be omitted from the resulting object.\n  - `destinations` (`list[obj]`): The destination to which traffic should be forwarded. When `null`, the `destinations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.action.destinations.new](#fn-rulesrulesdestinationsnew) constructor.\n  - `fault_injection_policy` (`list[obj]`): The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. When `null`, the `fault_injection_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.action.fault_injection_policy.new](#fn-rulesrulesfault_injection_policynew) constructor.\n  - `retry_policy` (`list[obj]`): Specifies the retry policy associated with this route. When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.action.retry_policy.new](#fn-rulesrulesretry_policynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `action` sub block.\n', args=[]),
      new(
        destinations=null,
        fault_injection_policy=null,
        retry_policy=null,
        timeout=null
      ):: std.prune(a={
        destinations: destinations,
        fault_injection_policy: fault_injection_policy,
        retry_policy: retry_policy,
        timeout: timeout,
      }),
      retry_policy:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_grpc_route.rules.action.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `num_retries` (`number`): Specifies the allowed number of retries. When `null`, the `num_retries` field will be omitted from the resulting object.\n  - `retry_conditions` (`list`): Specifies one or more conditions when this retry policy applies. Possible values: [&#34;connect-failure&#34;, &#34;refused-stream&#34;, &#34;cancelled&#34;, &#34;deadline-exceeded&#34;, &#34;resource-exhausted&#34;, &#34;unavailable&#34;] When `null`, the `retry_conditions` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `retry_policy` sub block.\n', args=[]),
        new(
          num_retries=null,
          retry_conditions=null
        ):: std.prune(a={
          num_retries: num_retries,
          retry_conditions: retry_conditions,
        }),
      },
    },
    matches:: {
      headers:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_grpc_route.rules.matches.headers.new` constructs a new object with attributes and blocks configured for the `headers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): Required. The key of the header.\n  - `type` (`string`): The type of match. Default value: &#34;EXACT&#34; Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;EXACT&#34;, &#34;REGULAR_EXPRESSION&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `value` (`string`): Required. The value of the header.\n\n**Returns**:\n  - An attribute object that represents the `headers` sub block.\n', args=[]),
        new(
          key,
          value,
          type=null
        ):: std.prune(a={
          key: key,
          type: type,
          value: value,
        }),
      },
      method:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_grpc_route.rules.matches.method.new` constructs a new object with attributes and blocks configured for the `method`\nTerraform sub block.\n\n\n\n**Args**:\n  - `case_sensitive` (`bool`): Specifies that matches are case sensitive. The default value is true. When `null`, the `case_sensitive` field will be omitted from the resulting object.\n  - `grpc_method` (`string`): Required. Name of the method to match against.\n  - `grpc_service` (`string`): Required. Name of the service to match against.\n\n**Returns**:\n  - An attribute object that represents the `method` sub block.\n', args=[]),
        new(
          grpc_method,
          grpc_service,
          case_sensitive=null
        ):: std.prune(a={
          case_sensitive: case_sensitive,
          grpc_method: grpc_method,
          grpc_service: grpc_service,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_network_services_grpc_route.rules.matches.new` constructs a new object with attributes and blocks configured for the `matches`\nTerraform sub block.\n\n\n\n**Args**:\n  - `headers` (`list[obj]`): Specifies a list of HTTP request headers to match against. When `null`, the `headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.matches.headers.new](#fn-rulesrulesheadersnew) constructor.\n  - `method` (`list[obj]`): A gRPC method to match against. If this field is empty or omitted, will match all methods. When `null`, the `method` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.matches.method.new](#fn-rulesrulesmethodnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `matches` sub block.\n', args=[]),
      new(
        headers=null,
        method=null
      ):: std.prune(a={
        headers: headers,
        method: method,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_network_services_grpc_route.rules.new` constructs a new object with attributes and blocks configured for the `rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `action` (`list[obj]`): Required. A detailed rule defining how to route traffic. When `null`, the `action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.action.new](#fn-rulesactionnew) constructor.\n  - `matches` (`list[obj]`): Matches define conditions used for matching the rule against incoming gRPC requests. When `null`, the `matches` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.matches.new](#fn-rulesmatchesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rules` sub block.\n', args=[]),
    new(
      action=null,
      matches=null
    ):: std.prune(a={
      action: action,
      matches: matches,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_network_services_grpc_route.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_network_services_grpc_route+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withGateways':: d.fn(help='`google-beta.list.withGateways` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the gateways field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `gateways` field.\n', args=[]),
  withGateways(resourceLabel, value): {
    resource+: {
      google_network_services_grpc_route+: {
        [resourceLabel]+: {
          gateways: value,
        },
      },
    },
  },
  '#withHostnames':: d.fn(help='`google-beta.list.withHostnames` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the hostnames field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `hostnames` field.\n', args=[]),
  withHostnames(resourceLabel, value): {
    resource+: {
      google_network_services_grpc_route+: {
        [resourceLabel]+: {
          hostnames: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_services_grpc_route+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMeshes':: d.fn(help='`google-beta.list.withMeshes` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the meshes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `meshes` field.\n', args=[]),
  withMeshes(resourceLabel, value): {
    resource+: {
      google_network_services_grpc_route+: {
        [resourceLabel]+: {
          meshes: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_services_grpc_route+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_services_grpc_route+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRules':: d.fn(help='`google-beta.list[obj].withRules` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withRulesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRules(resourceLabel, value): {
    resource+: {
      google_network_services_grpc_route+: {
        [resourceLabel]+: {
          rules: value,
        },
      },
    },
  },
  '#withRulesMixin':: d.fn(help='`google-beta.list[obj].withRulesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRules](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRulesMixin(resourceLabel, value): {
    resource+: {
      google_network_services_grpc_route+: {
        [resourceLabel]+: {
          rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_services_grpc_route+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_services_grpc_route+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
