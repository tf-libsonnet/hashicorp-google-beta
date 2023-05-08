local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_network_services_tls_route', url='', help='`google_network_services_tls_route` represents the `google-beta_google_network_services_tls_route` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_network_services_tls_route.new` injects a new `google-beta_google_network_services_tls_route` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_network_services_tls_route.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_network_services_tls_route` using the reference:\n\n    $._ref.google-beta_google_network_services_tls_route.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_network_services_tls_route.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `gateways` (`list`): Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway.\nEach gateway reference should match the pattern: projects/*/locations/global/gateways/\u0026lt;gateway_name\u0026gt; When `null`, the `gateways` field will be omitted from the resulting object.\n  - `meshes` (`list`): Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh.\nEach mesh reference should match the pattern: projects/*/locations/global/meshes/\u0026lt;mesh_name\u0026gt;\nThe attached Mesh should be of a type SIDECAR When `null`, the `meshes` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the TlsRoute resource.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `rules` (`list[obj]`): Rules that define how traffic is routed and handled. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tls_route.rules.new](#fn-rulesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tls_route.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    description=null,
    gateways=null,
    meshes=null,
    project=null,
    rules=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_services_tls_route',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      gateways=gateways,
      meshes=meshes,
      name=name,
      project=project,
      rules=rules,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_network_services_tls_route.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_services_tls_route`\nTerraform resource.\n\nUnlike [google-beta.google_network_services_tls_route.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `gateways` (`list`): Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway.\nEach gateway reference should match the pattern: projects/*/locations/global/gateways/&lt;gateway_name&gt; When `null`, the `gateways` field will be omitted from the resulting object.\n  - `meshes` (`list`): Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh.\nEach mesh reference should match the pattern: projects/*/locations/global/meshes/&lt;mesh_name&gt;\nThe attached Mesh should be of a type SIDECAR When `null`, the `meshes` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the TlsRoute resource.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `rules` (`list[obj]`): Rules that define how traffic is routed and handled. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tls_route.rules.new](#fn-rulesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tls_route.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_services_tls_route` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    description=null,
    gateways=null,
    meshes=null,
    project=null,
    rules=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    gateways: gateways,
    meshes: meshes,
    name: name,
    project: project,
    rules: rules,
    timeouts: timeouts,
  }),
  rules:: {
    action:: {
      destinations:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_tls_route.rules.action.destinations.new` constructs a new object with attributes and blocks configured for the `destinations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service_name` (`string`): The URL of a BackendService to route traffic to. When `null`, the `service_name` field will be omitted from the resulting object.\n  - `weight` (`number`): Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. When `null`, the `weight` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `destinations` sub block.\n', args=[]),
        new(
          service_name=null,
          weight=null
        ):: std.prune(a={
          service_name: service_name,
          weight: weight,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_network_services_tls_route.rules.action.new` constructs a new object with attributes and blocks configured for the `action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `destinations` (`list[obj]`): The destination to which traffic should be forwarded. When `null`, the `destinations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tls_route.rules.action.destinations.new](#fn-rulesrulesdestinationsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `action` sub block.\n', args=[]),
      new(
        destinations=null
      ):: std.prune(a={
        destinations: destinations,
      }),
    },
    matches:: {
      '#new':: d.fn(help='\n`google-beta.google_network_services_tls_route.rules.matches.new` constructs a new object with attributes and blocks configured for the `matches`\nTerraform sub block.\n\n\n\n**Args**:\n  - `alpn` (`list`): ALPN (Application-Layer Protocol Negotiation) to match against. Examples: &#34;http/1.1&#34;, &#34;h2&#34;. At least one of sniHost and alpn is required. Up to 5 alpns across all matches can be set. When `null`, the `alpn` field will be omitted from the resulting object.\n  - `sni_host` (`list`): SNI (server name indicator) to match against. SNI will be matched against all wildcard domains, i.e. www.example.com will be first matched against www.example.com, then *.example.com, then *.com.\nPartial wildcards are not supported, and values like *w.example.com are invalid. At least one of sniHost and alpn is required. Up to 5 sni hosts across all matches can be set. When `null`, the `sni_host` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `matches` sub block.\n', args=[]),
      new(
        alpn=null,
        sni_host=null
      ):: std.prune(a={
        alpn: alpn,
        sni_host: sni_host,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_network_services_tls_route.rules.new` constructs a new object with attributes and blocks configured for the `rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `action` (`list[obj]`): Required. A detailed rule defining how to route traffic. When `null`, the `action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tls_route.rules.action.new](#fn-rulesactionnew) constructor.\n  - `matches` (`list[obj]`): Matches define the predicate used to match requests to a given action. When `null`, the `matches` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tls_route.rules.matches.new](#fn-rulesmatchesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rules` sub block.\n', args=[]),
    new(
      action=null,
      matches=null
    ):: std.prune(a={
      action: action,
      matches: matches,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_network_services_tls_route.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_network_services_tls_route+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withGateways':: d.fn(help='`google-beta.list.withGateways` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the gateways field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `gateways` field.\n', args=[]),
  withGateways(resourceLabel, value): {
    resource+: {
      google_network_services_tls_route+: {
        [resourceLabel]+: {
          gateways: value,
        },
      },
    },
  },
  '#withMeshes':: d.fn(help='`google-beta.list.withMeshes` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the meshes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `meshes` field.\n', args=[]),
  withMeshes(resourceLabel, value): {
    resource+: {
      google_network_services_tls_route+: {
        [resourceLabel]+: {
          meshes: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_services_tls_route+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_services_tls_route+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRules':: d.fn(help='`google-beta.list[obj].withRules` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withRulesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRules(resourceLabel, value): {
    resource+: {
      google_network_services_tls_route+: {
        [resourceLabel]+: {
          rules: value,
        },
      },
    },
  },
  '#withRulesMixin':: d.fn(help='`google-beta.list[obj].withRulesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRules](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRulesMixin(resourceLabel, value): {
    resource+: {
      google_network_services_tls_route+: {
        [resourceLabel]+: {
          rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_services_tls_route+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_services_tls_route+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
