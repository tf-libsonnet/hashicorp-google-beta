local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_network_services_http_route', url='', help='`google_network_services_http_route` represents the `google-beta_google_network_services_http_route` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_network_services_http_route.new` injects a new `google-beta_google_network_services_http_route` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_network_services_http_route.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_network_services_http_route` using the reference:\n\n    $._ref.google-beta_google_network_services_http_route.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_network_services_http_route.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `gateways` (`list`): Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway.\nEach gateway reference should match the pattern: projects/*/locations/global/gateways/\u0026lt;gateway_name\u0026gt; When `null`, the `gateways` field will be omitted from the resulting object.\n  - `hostnames` (`list`): Set of hosts that should match against the HTTP host header to select a HttpRoute to process the request.\n  - `labels` (`obj`): Set of label tags associated with the HttpRoute resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `meshes` (`list`): Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh.\nEach mesh reference should match the pattern: projects/*/locations/global/meshes/\u0026lt;mesh_name\u0026gt;.\nThe attached Mesh should be of a type SIDECAR. When `null`, the `meshes` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the HttpRoute resource.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `rules` (`list[obj]`): Rules that define how traffic is routed and handled. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.new](#fn-rulesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
    type='google_network_services_http_route',
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
  '#newAttrs':: d.fn(help='\n`google-beta.google_network_services_http_route.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_services_http_route`\nTerraform resource.\n\nUnlike [google-beta.google_network_services_http_route.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `gateways` (`list`): Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway.\nEach gateway reference should match the pattern: projects/*/locations/global/gateways/&lt;gateway_name&gt; When `null`, the `gateways` field will be omitted from the resulting object.\n  - `hostnames` (`list`): Set of hosts that should match against the HTTP host header to select a HttpRoute to process the request.\n  - `labels` (`obj`): Set of label tags associated with the HttpRoute resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `meshes` (`list`): Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh.\nEach mesh reference should match the pattern: projects/*/locations/global/meshes/&lt;mesh_name&gt;.\nThe attached Mesh should be of a type SIDECAR. When `null`, the `meshes` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the HttpRoute resource.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `rules` (`list[obj]`): Rules that define how traffic is routed and handled. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.new](#fn-rulesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_services_http_route` resource into the root Terraform configuration.\n', args=[]),
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
      cors_policy:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.action.cors_policy.new` constructs a new object with attributes and blocks configured for the `cors_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_credentials` (`bool`): In response to a preflight request, setting this to true indicates that the actual request can include user credentials. When `null`, the `allow_credentials` field will be omitted from the resulting object.\n  - `allow_headers` (`list`): Specifies the content for Access-Control-Allow-Headers header. When `null`, the `allow_headers` field will be omitted from the resulting object.\n  - `allow_methods` (`list`): Specifies the content for Access-Control-Allow-Methods header. When `null`, the `allow_methods` field will be omitted from the resulting object.\n  - `allow_origin_regexes` (`list`): Specifies the regular expression patterns that match allowed origins. When `null`, the `allow_origin_regexes` field will be omitted from the resulting object.\n  - `allow_origins` (`list`): Specifies the list of origins that will be allowed to do CORS requests. When `null`, the `allow_origins` field will be omitted from the resulting object.\n  - `disabled` (`bool`): If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `expose_headers` (`list`): Specifies the content for Access-Control-Expose-Headers header. When `null`, the `expose_headers` field will be omitted from the resulting object.\n  - `max_age` (`string`): Specifies how long result of a preflight request can be cached in seconds. When `null`, the `max_age` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cors_policy` sub block.\n', args=[]),
        new(
          allow_credentials=null,
          allow_headers=null,
          allow_methods=null,
          allow_origin_regexes=null,
          allow_origins=null,
          disabled=null,
          expose_headers=null,
          max_age=null
        ):: std.prune(a={
          allow_credentials: allow_credentials,
          allow_headers: allow_headers,
          allow_methods: allow_methods,
          allow_origin_regexes: allow_origin_regexes,
          allow_origins: allow_origins,
          disabled: disabled,
          expose_headers: expose_headers,
          max_age: max_age,
        }),
      },
      destinations:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.action.destinations.new` constructs a new object with attributes and blocks configured for the `destinations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service_name` (`string`): The URL of a BackendService to route traffic to. When `null`, the `service_name` field will be omitted from the resulting object.\n  - `weight` (`number`): Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. This is computed as: weight/Sum(weights in this destination list). For non-zero values, there may be some epsilon from the exact proportion defined here depending on the precision an implementation supports.\nIf only one serviceName is specified and it has a weight greater than 0, 100% of the traffic is forwarded to that backend.\nIf weights are specified for any one service name, they need to be specified for all of them.\nIf weights are unspecified for all services, then, traffic is distributed in equal proportions to all of them. When `null`, the `weight` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `destinations` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.action.fault_injection_policy.abort.new` constructs a new object with attributes and blocks configured for the `abort`\nTerraform sub block.\n\n\n\n**Args**:\n  - `http_status` (`number`): The HTTP status code used to abort the request. When `null`, the `http_status` field will be omitted from the resulting object.\n  - `percentage` (`number`): The percentage of traffic which will be aborted. When `null`, the `percentage` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `abort` sub block.\n', args=[]),
          new(
            http_status=null,
            percentage=null
          ):: std.prune(a={
            http_status: http_status,
            percentage: percentage,
          }),
        },
        delay:: {
          '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.action.fault_injection_policy.delay.new` constructs a new object with attributes and blocks configured for the `delay`\nTerraform sub block.\n\n\n\n**Args**:\n  - `fixed_delay` (`string`): Specify a fixed delay before forwarding the request. When `null`, the `fixed_delay` field will be omitted from the resulting object.\n  - `percentage` (`number`): The percentage of traffic on which delay will be injected. When `null`, the `percentage` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `delay` sub block.\n', args=[]),
          new(
            fixed_delay=null,
            percentage=null
          ):: std.prune(a={
            fixed_delay: fixed_delay,
            percentage: percentage,
          }),
        },
        '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.action.fault_injection_policy.new` constructs a new object with attributes and blocks configured for the `fault_injection_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `abort` (`list[obj]`): Specification of how client requests are aborted as part of fault injection before being sent to a destination. When `null`, the `abort` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.fault_injection_policy.abort.new](#fn-rulesrulesactionabortnew) constructor.\n  - `delay` (`list[obj]`): Specification of how client requests are delayed as part of fault injection before being sent to a destination. When `null`, the `delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.fault_injection_policy.delay.new](#fn-rulesrulesactiondelaynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `fault_injection_policy` sub block.\n', args=[]),
        new(
          abort=null,
          delay=null
        ):: std.prune(a={
          abort: abort,
          delay: delay,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.action.new` constructs a new object with attributes and blocks configured for the `action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `timeout` (`string`): Specifies the timeout for selected route. When `null`, the `timeout` field will be omitted from the resulting object.\n  - `cors_policy` (`list[obj]`): The specification for allowing client side cross-origin requests. When `null`, the `cors_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.cors_policy.new](#fn-rulesrulescors_policynew) constructor.\n  - `destinations` (`list[obj]`): The destination to which traffic should be forwarded. When `null`, the `destinations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.destinations.new](#fn-rulesrulesdestinationsnew) constructor.\n  - `fault_injection_policy` (`list[obj]`): The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. When `null`, the `fault_injection_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.fault_injection_policy.new](#fn-rulesrulesfault_injection_policynew) constructor.\n  - `redirect` (`list[obj]`): If set, the request is directed as configured by this field. When `null`, the `redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.redirect.new](#fn-rulesrulesredirectnew) constructor.\n  - `request_header_modifier` (`list[obj]`): The specification for modifying the headers of a matching request prior to delivery of the request to the destination. When `null`, the `request_header_modifier` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.request_header_modifier.new](#fn-rulesrulesrequest_header_modifiernew) constructor.\n  - `request_mirror_policy` (`list[obj]`): Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination. When `null`, the `request_mirror_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.request_mirror_policy.new](#fn-rulesrulesrequest_mirror_policynew) constructor.\n  - `response_header_modifier` (`list[obj]`): The specification for modifying the headers of a response prior to sending the response back to the client. When `null`, the `response_header_modifier` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.response_header_modifier.new](#fn-rulesrulesresponse_header_modifiernew) constructor.\n  - `retry_policy` (`list[obj]`): Specifies the retry policy associated with this route. When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.retry_policy.new](#fn-rulesrulesretry_policynew) constructor.\n  - `url_rewrite` (`list[obj]`): The specification for rewrite URL before forwarding requests to the destination. When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.url_rewrite.new](#fn-rulesrulesurl_rewritenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `action` sub block.\n', args=[]),
      new(
        cors_policy=null,
        destinations=null,
        fault_injection_policy=null,
        redirect=null,
        request_header_modifier=null,
        request_mirror_policy=null,
        response_header_modifier=null,
        retry_policy=null,
        timeout=null,
        url_rewrite=null
      ):: std.prune(a={
        cors_policy: cors_policy,
        destinations: destinations,
        fault_injection_policy: fault_injection_policy,
        redirect: redirect,
        request_header_modifier: request_header_modifier,
        request_mirror_policy: request_mirror_policy,
        response_header_modifier: response_header_modifier,
        retry_policy: retry_policy,
        timeout: timeout,
        url_rewrite: url_rewrite,
      }),
      redirect:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.action.redirect.new` constructs a new object with attributes and blocks configured for the `redirect`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_redirect` (`string`): The host that will be used in the redirect response instead of the one that was supplied in the request. When `null`, the `host_redirect` field will be omitted from the resulting object.\n  - `https_redirect` (`bool`): If set to true, the URL scheme in the redirected request is set to https. When `null`, the `https_redirect` field will be omitted from the resulting object.\n  - `path_redirect` (`string`): The path that will be used in the redirect response instead of the one that was supplied in the request. pathRedirect can not be supplied together with prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect. When `null`, the `path_redirect` field will be omitted from the resulting object.\n  - `port_redirect` (`number`): The port that will be used in the redirected request instead of the one that was supplied in the request. When `null`, the `port_redirect` field will be omitted from the resulting object.\n  - `prefix_rewrite` (`string`): Indicates that during redirection, the matched prefix (or path) should be swapped with this value. When `null`, the `prefix_rewrite` field will be omitted from the resulting object.\n  - `response_code` (`string`): The HTTP Status code to use for the redirect. When `null`, the `response_code` field will be omitted from the resulting object.\n  - `strip_query` (`bool`): If set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. When `null`, the `strip_query` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `redirect` sub block.\n', args=[]),
        new(
          host_redirect=null,
          https_redirect=null,
          path_redirect=null,
          port_redirect=null,
          prefix_rewrite=null,
          response_code=null,
          strip_query=null
        ):: std.prune(a={
          host_redirect: host_redirect,
          https_redirect: https_redirect,
          path_redirect: path_redirect,
          port_redirect: port_redirect,
          prefix_rewrite: prefix_rewrite,
          response_code: response_code,
          strip_query: strip_query,
        }),
      },
      request_header_modifier:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.action.request_header_modifier.new` constructs a new object with attributes and blocks configured for the `request_header_modifier`\nTerraform sub block.\n\n\n\n**Args**:\n  - `add` (`obj`): Add the headers with given map where key is the name of the header, value is the value of the header. When `null`, the `add` field will be omitted from the resulting object.\n  - `remove` (`list`): Remove headers (matching by header names) specified in the list. When `null`, the `remove` field will be omitted from the resulting object.\n  - `set` (`obj`): Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header. When `null`, the `set` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `request_header_modifier` sub block.\n', args=[]),
        new(
          add=null,
          remove=null,
          set=null
        ):: std.prune(a={
          add: add,
          remove: remove,
          set: set,
        }),
      },
      request_mirror_policy:: {
        destination:: {
          '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.action.request_mirror_policy.destination.new` constructs a new object with attributes and blocks configured for the `destination`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service_name` (`string`): The URL of a BackendService to route traffic to. When `null`, the `service_name` field will be omitted from the resulting object.\n  - `weight` (`number`): Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. This is computed as: weight/Sum(weights in this destination list). For non-zero values, there may be some epsilon from the exact proportion defined here depending on the precision an implementation supports.\nIf only one serviceName is specified and it has a weight greater than 0, 100% of the traffic is forwarded to that backend.\nIf weights are specified for any one service name, they need to be specified for all of them.\nIf weights are unspecified for all services, then, traffic is distributed in equal proportions to all of them. When `null`, the `weight` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `destination` sub block.\n', args=[]),
          new(
            service_name=null,
            weight=null
          ):: std.prune(a={
            service_name: service_name,
            weight: weight,
          }),
        },
        '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.action.request_mirror_policy.new` constructs a new object with attributes and blocks configured for the `request_mirror_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `destination` (`list[obj]`): The destination the requests will be mirrored to. When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.request_mirror_policy.destination.new](#fn-rulesrulesactiondestinationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `request_mirror_policy` sub block.\n', args=[]),
        new(
          destination=null
        ):: std.prune(a={
          destination: destination,
        }),
      },
      response_header_modifier:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.action.response_header_modifier.new` constructs a new object with attributes and blocks configured for the `response_header_modifier`\nTerraform sub block.\n\n\n\n**Args**:\n  - `add` (`obj`): Add the headers with given map where key is the name of the header, value is the value of the header. When `null`, the `add` field will be omitted from the resulting object.\n  - `remove` (`list`): Remove headers (matching by header names) specified in the list. When `null`, the `remove` field will be omitted from the resulting object.\n  - `set` (`obj`): Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header. When `null`, the `set` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `response_header_modifier` sub block.\n', args=[]),
        new(
          add=null,
          remove=null,
          set=null
        ):: std.prune(a={
          add: add,
          remove: remove,
          set: set,
        }),
      },
      retry_policy:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.action.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `num_retries` (`number`): Specifies the allowed number of retries. When `null`, the `num_retries` field will be omitted from the resulting object.\n  - `per_try_timeout` (`string`): Specifies a non-zero timeout per retry attempt. A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `per_try_timeout` field will be omitted from the resulting object.\n  - `retry_conditions` (`list`): Specifies one or more conditions when this retry policy applies. When `null`, the `retry_conditions` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `retry_policy` sub block.\n', args=[]),
        new(
          num_retries=null,
          per_try_timeout=null,
          retry_conditions=null
        ):: std.prune(a={
          num_retries: num_retries,
          per_try_timeout: per_try_timeout,
          retry_conditions: retry_conditions,
        }),
      },
      url_rewrite:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_rewrite` (`string`): Prior to forwarding the request to the selected destination, the requests host header is replaced by this value. When `null`, the `host_rewrite` field will be omitted from the resulting object.\n  - `path_prefix_rewrite` (`string`): Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value. When `null`, the `path_prefix_rewrite` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `url_rewrite` sub block.\n', args=[]),
        new(
          host_rewrite=null,
          path_prefix_rewrite=null
        ):: std.prune(a={
          host_rewrite: host_rewrite,
          path_prefix_rewrite: path_prefix_rewrite,
        }),
      },
    },
    matches:: {
      headers:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.matches.headers.new` constructs a new object with attributes and blocks configured for the `headers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exact_match` (`string`): The value of the header should match exactly the content of exactMatch. When `null`, the `exact_match` field will be omitted from the resulting object.\n  - `header` (`string`): The name of the HTTP header to match against. When `null`, the `header` field will be omitted from the resulting object.\n  - `invert_match` (`bool`): If specified, the match result will be inverted before checking. Default value is set to false. When `null`, the `invert_match` field will be omitted from the resulting object.\n  - `prefix_match` (`string`): The value of the header must start with the contents of prefixMatch. When `null`, the `prefix_match` field will be omitted from the resulting object.\n  - `present_match` (`bool`): A header with headerName must exist. The match takes place whether or not the header has a value. When `null`, the `present_match` field will be omitted from the resulting object.\n  - `regex_match` (`string`): The value of the header must match the regular expression specified in regexMatch. When `null`, the `regex_match` field will be omitted from the resulting object.\n  - `suffix_match` (`string`): The value of the header must end with the contents of suffixMatch. When `null`, the `suffix_match` field will be omitted from the resulting object.\n  - `range_match` (`list[obj]`): If specified, the rule will match if the request header value is within the range. When `null`, the `range_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.matches.headers.range_match.new](#fn-rulesrulesmatchesrange_matchnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `headers` sub block.\n', args=[]),
        new(
          exact_match=null,
          header=null,
          invert_match=null,
          prefix_match=null,
          present_match=null,
          range_match=null,
          regex_match=null,
          suffix_match=null
        ):: std.prune(a={
          exact_match: exact_match,
          header: header,
          invert_match: invert_match,
          prefix_match: prefix_match,
          present_match: present_match,
          range_match: range_match,
          regex_match: regex_match,
          suffix_match: suffix_match,
        }),
        range_match:: {
          '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.matches.headers.range_match.new` constructs a new object with attributes and blocks configured for the `range_match`\nTerraform sub block.\n\n\n\n**Args**:\n  - `end` (`number`): End of the range (exclusive).\n  - `start` (`number`): Start of the range (inclusive).\n\n**Returns**:\n  - An attribute object that represents the `range_match` sub block.\n', args=[]),
          new(
            end,
            start
          ):: std.prune(a={
            end: end,
            start: start,
          }),
        },
      },
      '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.matches.new` constructs a new object with attributes and blocks configured for the `matches`\nTerraform sub block.\n\n\n\n**Args**:\n  - `full_path_match` (`string`): The HTTP request path value should exactly match this value. When `null`, the `full_path_match` field will be omitted from the resulting object.\n  - `ignore_case` (`bool`): Specifies if prefixMatch and fullPathMatch matches are case sensitive. The default value is false. When `null`, the `ignore_case` field will be omitted from the resulting object.\n  - `prefix_match` (`string`): The HTTP request path value must begin with specified prefixMatch. prefixMatch must begin with a /. When `null`, the `prefix_match` field will be omitted from the resulting object.\n  - `regex_match` (`string`): The HTTP request path value must satisfy the regular expression specified by regexMatch after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax When `null`, the `regex_match` field will be omitted from the resulting object.\n  - `headers` (`list[obj]`): Specifies a list of HTTP request headers to match against. When `null`, the `headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.matches.headers.new](#fn-rulesrulesheadersnew) constructor.\n  - `query_parameters` (`list[obj]`): Specifies a list of query parameters to match against. When `null`, the `query_parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.matches.query_parameters.new](#fn-rulesrulesquery_parametersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `matches` sub block.\n', args=[]),
      new(
        full_path_match=null,
        headers=null,
        ignore_case=null,
        prefix_match=null,
        query_parameters=null,
        regex_match=null
      ):: std.prune(a={
        full_path_match: full_path_match,
        headers: headers,
        ignore_case: ignore_case,
        prefix_match: prefix_match,
        query_parameters: query_parameters,
        regex_match: regex_match,
      }),
      query_parameters:: {
        '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.matches.query_parameters.new` constructs a new object with attributes and blocks configured for the `query_parameters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exact_match` (`string`): The value of the query parameter must exactly match the contents of exactMatch. When `null`, the `exact_match` field will be omitted from the resulting object.\n  - `present_match` (`bool`): Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not. When `null`, the `present_match` field will be omitted from the resulting object.\n  - `query_parameter` (`string`): The name of the query parameter to match. When `null`, the `query_parameter` field will be omitted from the resulting object.\n  - `regex_match` (`string`): The value of the query parameter must match the regular expression specified by regexMatch.For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax When `null`, the `regex_match` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `query_parameters` sub block.\n', args=[]),
        new(
          exact_match=null,
          present_match=null,
          query_parameter=null,
          regex_match=null
        ):: std.prune(a={
          exact_match: exact_match,
          present_match: present_match,
          query_parameter: query_parameter,
          regex_match: regex_match,
        }),
      },
    },
    '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.rules.new` constructs a new object with attributes and blocks configured for the `rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `action` (`list[obj]`): The detailed rule defining how to route matched traffic. When `null`, the `action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.new](#fn-rulesactionnew) constructor.\n  - `matches` (`list[obj]`): A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied.\nIf no matches field is specified, this rule will unconditionally match traffic.\nIf a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list. When `null`, the `matches` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.matches.new](#fn-rulesmatchesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rules` sub block.\n', args=[]),
    new(
      action=null,
      matches=null
    ):: std.prune(a={
      action: action,
      matches: matches,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_network_services_http_route.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_network_services_http_route+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withGateways':: d.fn(help='`google-beta.list.withGateways` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the gateways field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `gateways` field.\n', args=[]),
  withGateways(resourceLabel, value): {
    resource+: {
      google_network_services_http_route+: {
        [resourceLabel]+: {
          gateways: value,
        },
      },
    },
  },
  '#withHostnames':: d.fn(help='`google-beta.list.withHostnames` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the hostnames field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `hostnames` field.\n', args=[]),
  withHostnames(resourceLabel, value): {
    resource+: {
      google_network_services_http_route+: {
        [resourceLabel]+: {
          hostnames: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_services_http_route+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMeshes':: d.fn(help='`google-beta.list.withMeshes` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the meshes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `meshes` field.\n', args=[]),
  withMeshes(resourceLabel, value): {
    resource+: {
      google_network_services_http_route+: {
        [resourceLabel]+: {
          meshes: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_services_http_route+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_services_http_route+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRules':: d.fn(help='`google-beta.list[obj].withRules` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withRulesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRules(resourceLabel, value): {
    resource+: {
      google_network_services_http_route+: {
        [resourceLabel]+: {
          rules: value,
        },
      },
    },
  },
  '#withRulesMixin':: d.fn(help='`google-beta.list[obj].withRulesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRules](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRulesMixin(resourceLabel, value): {
    resource+: {
      google_network_services_http_route+: {
        [resourceLabel]+: {
          rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_services_http_route+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_services_http_route+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
