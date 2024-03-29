local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_compute_region_backend_service', url='', help='`google_compute_region_backend_service` represents the `google-beta_google_compute_region_backend_service` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  backend:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.backend.new` constructs a new object with attributes and blocks configured for the `backend`\nTerraform sub block.\n\n\n\n**Args**:\n  - `balancing_mode` (`string`): Specifies the balancing mode for this backend.\n\nSee the [Backend Services Overview](https://cloud.google.com/load-balancing/docs/backend-service#balancing-mode)\nfor an explanation of load balancing modes. Default value: &#34;CONNECTION&#34; Possible values: [&#34;UTILIZATION&#34;, &#34;RATE&#34;, &#34;CONNECTION&#34;] When `null`, the `balancing_mode` field will be omitted from the resulting object.\n  - `capacity_scaler` (`number`): A multiplier applied to the group&#39;s maximum servicing capacity\n(based on UTILIZATION, RATE or CONNECTION).\n\n~&gt;**NOTE**: This field cannot be set for\nINTERNAL region backend services (default loadBalancingScheme),\nbut is required for non-INTERNAL backend service. The total\ncapacity_scaler for all backends must be non-zero.\n\nA setting of 0 means the group is completely drained, offering\n0% of its available Capacity. Valid range is [0.0,1.0]. When `null`, the `capacity_scaler` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource.\nProvide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `failover` (`bool`): This field designates whether this is a failover backend. More\nthan one failover backend can be configured for a given RegionBackendService. When `null`, the `failover` field will be omitted from the resulting object.\n  - `group` (`string`): The fully-qualified URL of an Instance Group or Network Endpoint\nGroup resource. In case of instance group this defines the list\nof instances that serve traffic. Member virtual machine\ninstances from each instance group must live in the same zone as\nthe instance group itself. No two backends in a backend service\nare allowed to use same Instance Group resource.\n\nFor Network Endpoint Groups this defines list of endpoints. All\nendpoints of Network Endpoint Group must be hosted on instances\nlocated in the same zone as the Network Endpoint Group.\n\nBackend services cannot mix Instance Group and\nNetwork Endpoint Group backends.\n\nWhen the &#39;load_balancing_scheme&#39; is INTERNAL, only instance groups\nare supported.\n\nNote that you must specify an Instance Group or Network Endpoint\nGroup resource using the fully-qualified URL, rather than a\npartial URL.\n  - `max_connections` (`number`): The max number of simultaneous connections for the group. Can\nbe used with either CONNECTION or UTILIZATION balancing modes.\nCannot be set for INTERNAL backend services.\n\nFor CONNECTION mode, either maxConnections or one\nof maxConnectionsPerInstance or maxConnectionsPerEndpoint,\nas appropriate for group type, must be set. When `null`, the `max_connections` field will be omitted from the resulting object.\n  - `max_connections_per_endpoint` (`number`): The max number of simultaneous connections that a single backend\nnetwork endpoint can handle. Cannot be set\nfor INTERNAL backend services.\n\nThis is used to calculate the capacity of the group. Can be\nused in either CONNECTION or UTILIZATION balancing modes. For\nCONNECTION mode, either maxConnections or\nmaxConnectionsPerEndpoint must be set. When `null`, the `max_connections_per_endpoint` field will be omitted from the resulting object.\n  - `max_connections_per_instance` (`number`): The max number of simultaneous connections that a single\nbackend instance can handle. Cannot be set for INTERNAL backend\nservices.\n\nThis is used to calculate the capacity of the group.\nCan be used in either CONNECTION or UTILIZATION balancing modes.\nFor CONNECTION mode, either maxConnections or\nmaxConnectionsPerInstance must be set. When `null`, the `max_connections_per_instance` field will be omitted from the resulting object.\n  - `max_rate` (`number`): The max requests per second (RPS) of the group. Cannot be set\nfor INTERNAL backend services.\n\nCan be used with either RATE or UTILIZATION balancing modes,\nbut required if RATE mode. Either maxRate or one\nof maxRatePerInstance or maxRatePerEndpoint, as appropriate for\ngroup type, must be set. When `null`, the `max_rate` field will be omitted from the resulting object.\n  - `max_rate_per_endpoint` (`number`): The max requests per second (RPS) that a single backend network\nendpoint can handle. This is used to calculate the capacity of\nthe group. Can be used in either balancing mode. For RATE mode,\neither maxRate or maxRatePerEndpoint must be set. Cannot be set\nfor INTERNAL backend services. When `null`, the `max_rate_per_endpoint` field will be omitted from the resulting object.\n  - `max_rate_per_instance` (`number`): The max requests per second (RPS) that a single backend\ninstance can handle. This is used to calculate the capacity of\nthe group. Can be used in either balancing mode. For RATE mode,\neither maxRate or maxRatePerInstance must be set. Cannot be set\nfor INTERNAL backend services. When `null`, the `max_rate_per_instance` field will be omitted from the resulting object.\n  - `max_utilization` (`number`): Used when balancingMode is UTILIZATION. This ratio defines the\nCPU utilization target for the group. Valid range is [0.0, 1.0].\nCannot be set for INTERNAL backend services. When `null`, the `max_utilization` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `backend` sub block.\n', args=[]),
    new(
      group,
      balancing_mode=null,
      capacity_scaler=null,
      description=null,
      failover=null,
      max_connections=null,
      max_connections_per_endpoint=null,
      max_connections_per_instance=null,
      max_rate=null,
      max_rate_per_endpoint=null,
      max_rate_per_instance=null,
      max_utilization=null
    ):: std.prune(a={
      balancing_mode: balancing_mode,
      capacity_scaler: capacity_scaler,
      description: description,
      failover: failover,
      group: group,
      max_connections: max_connections,
      max_connections_per_endpoint: max_connections_per_endpoint,
      max_connections_per_instance: max_connections_per_instance,
      max_rate: max_rate,
      max_rate_per_endpoint: max_rate_per_endpoint,
      max_rate_per_instance: max_rate_per_instance,
      max_utilization: max_utilization,
    }),
  },
  cdn_policy:: {
    cache_key_policy:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.cdn_policy.cache_key_policy.new` constructs a new object with attributes and blocks configured for the `cache_key_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `include_host` (`bool`): If true requests to different hosts will be cached separately. When `null`, the `include_host` field will be omitted from the resulting object.\n  - `include_named_cookies` (`list`): Names of cookies to include in cache keys. When `null`, the `include_named_cookies` field will be omitted from the resulting object.\n  - `include_protocol` (`bool`): If true, http and https requests will be cached separately. When `null`, the `include_protocol` field will be omitted from the resulting object.\n  - `include_query_string` (`bool`): If true, include query string parameters in the cache key\naccording to query_string_whitelist and\nquery_string_blacklist. If neither is set, the entire query\nstring will be included.\n\nIf false, the query string will be excluded from the cache\nkey entirely. When `null`, the `include_query_string` field will be omitted from the resulting object.\n  - `query_string_blacklist` (`list`): Names of query string parameters to exclude in cache keys.\n\nAll other parameters will be included. Either specify\nquery_string_whitelist or query_string_blacklist, not both.\n&#39;&amp;&#39; and &#39;=&#39; will be percent encoded and not treated as\ndelimiters. When `null`, the `query_string_blacklist` field will be omitted from the resulting object.\n  - `query_string_whitelist` (`list`): Names of query string parameters to include in cache keys.\n\nAll other parameters will be excluded. Either specify\nquery_string_whitelist or query_string_blacklist, not both.\n&#39;&amp;&#39; and &#39;=&#39; will be percent encoded and not treated as\ndelimiters. When `null`, the `query_string_whitelist` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cache_key_policy` sub block.\n', args=[]),
      new(
        include_host=null,
        include_named_cookies=null,
        include_protocol=null,
        include_query_string=null,
        query_string_blacklist=null,
        query_string_whitelist=null
      ):: std.prune(a={
        include_host: include_host,
        include_named_cookies: include_named_cookies,
        include_protocol: include_protocol,
        include_query_string: include_query_string,
        query_string_blacklist: query_string_blacklist,
        query_string_whitelist: query_string_whitelist,
      }),
    },
    negative_caching_policy:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.cdn_policy.negative_caching_policy.new` constructs a new object with attributes and blocks configured for the `negative_caching_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `code` (`number`): The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501\ncan be specified as values, and you cannot specify a status code more than once. When `null`, the `code` field will be omitted from the resulting object.\n  - `ttl` (`number`): The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s\n(30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL. When `null`, the `ttl` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `negative_caching_policy` sub block.\n', args=[]),
      new(
        code=null,
        ttl=null
      ):: std.prune(a={
        code: code,
        ttl: ttl,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.cdn_policy.new` constructs a new object with attributes and blocks configured for the `cdn_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cache_mode` (`string`): Specifies the cache setting for all responses from this backend.\nThe possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC Possible values: [&#34;USE_ORIGIN_HEADERS&#34;, &#34;FORCE_CACHE_ALL&#34;, &#34;CACHE_ALL_STATIC&#34;] When `null`, the `cache_mode` field will be omitted from the resulting object.\n  - `client_ttl` (`number`): Specifies the maximum allowed TTL for cached content served by this origin. When `null`, the `client_ttl` field will be omitted from the resulting object.\n  - `default_ttl` (`number`): Specifies the default TTL for cached content served by this origin for responses\nthat do not have an existing valid TTL (max-age or s-max-age). When `null`, the `default_ttl` field will be omitted from the resulting object.\n  - `max_ttl` (`number`): Specifies the maximum allowed TTL for cached content served by this origin. When `null`, the `max_ttl` field will be omitted from the resulting object.\n  - `negative_caching` (`bool`): Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. When `null`, the `negative_caching` field will be omitted from the resulting object.\n  - `serve_while_stale` (`number`): Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache. When `null`, the `serve_while_stale` field will be omitted from the resulting object.\n  - `signed_url_cache_max_age_sec` (`number`): Maximum number of seconds the response to a signed URL request\nwill be considered fresh, defaults to 1hr (3600s). After this\ntime period, the response will be revalidated before\nbeing served.\n\nWhen serving responses to signed URL requests, Cloud CDN will\ninternally behave as though all responses from this backend had a\n&#34;Cache-Control: public, max-age=[TTL]&#34; header, regardless of any\nexisting Cache-Control header. The actual headers served in\nresponses will not be altered. When `null`, the `signed_url_cache_max_age_sec` field will be omitted from the resulting object.\n  - `cache_key_policy` (`list[obj]`): The CacheKeyPolicy for this CdnPolicy. When `null`, the `cache_key_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.cdn_policy.cache_key_policy.new](#fn-cdn_policycache_key_policynew) constructor.\n  - `negative_caching_policy` (`list[obj]`): Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.\nOmitting the policy and leaving negativeCaching enabled will use Cloud CDN&#39;s default cache TTLs. When `null`, the `negative_caching_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.cdn_policy.negative_caching_policy.new](#fn-cdn_policynegative_caching_policynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `cdn_policy` sub block.\n', args=[]),
    new(
      cache_key_policy=null,
      cache_mode=null,
      client_ttl=null,
      default_ttl=null,
      max_ttl=null,
      negative_caching=null,
      negative_caching_policy=null,
      serve_while_stale=null,
      signed_url_cache_max_age_sec=null
    ):: std.prune(a={
      cache_key_policy: cache_key_policy,
      cache_mode: cache_mode,
      client_ttl: client_ttl,
      default_ttl: default_ttl,
      max_ttl: max_ttl,
      negative_caching: negative_caching,
      negative_caching_policy: negative_caching_policy,
      serve_while_stale: serve_while_stale,
      signed_url_cache_max_age_sec: signed_url_cache_max_age_sec,
    }),
  },
  circuit_breakers:: {
    connect_timeout:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.circuit_breakers.connect_timeout.new` constructs a new object with attributes and blocks configured for the `connect_timeout`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond\nresolution. Durations less than one second are represented\nwith a 0 seconds field and a positive nanos field. Must\nbe from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Span of time at a resolution of a second.\nMust be from 0 to 315,576,000,000 inclusive.\n\n**Returns**:\n  - An attribute object that represents the `connect_timeout` sub block.\n', args=[]),
      new(
        seconds,
        nanos=null
      ):: std.prune(a={
        nanos: nanos,
        seconds: seconds,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.circuit_breakers.new` constructs a new object with attributes and blocks configured for the `circuit_breakers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_connections` (`number`): The maximum number of connections to the backend cluster.\nDefaults to 1024. When `null`, the `max_connections` field will be omitted from the resulting object.\n  - `max_pending_requests` (`number`): The maximum number of pending requests to the backend cluster.\nDefaults to 1024. When `null`, the `max_pending_requests` field will be omitted from the resulting object.\n  - `max_requests` (`number`): The maximum number of parallel requests to the backend cluster.\nDefaults to 1024. When `null`, the `max_requests` field will be omitted from the resulting object.\n  - `max_requests_per_connection` (`number`): Maximum requests for a single backend connection. This parameter\nis respected by both the HTTP/1.1 and HTTP/2 implementations. If\nnot specified, there is no limit. Setting this parameter to 1\nwill effectively disable keep alive. When `null`, the `max_requests_per_connection` field will be omitted from the resulting object.\n  - `max_retries` (`number`): The maximum number of parallel retries to the backend cluster.\nDefaults to 3. When `null`, the `max_retries` field will be omitted from the resulting object.\n  - `connect_timeout` (`list[obj]`): The timeout for new network connections to hosts. When `null`, the `connect_timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.circuit_breakers.connect_timeout.new](#fn-circuit_breakersconnect_timeoutnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `circuit_breakers` sub block.\n', args=[]),
    new(
      connect_timeout=null,
      max_connections=null,
      max_pending_requests=null,
      max_requests=null,
      max_requests_per_connection=null,
      max_retries=null
    ):: std.prune(a={
      connect_timeout: connect_timeout,
      max_connections: max_connections,
      max_pending_requests: max_pending_requests,
      max_requests: max_requests,
      max_requests_per_connection: max_requests_per_connection,
      max_retries: max_retries,
    }),
  },
  connection_tracking_policy:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.connection_tracking_policy.new` constructs a new object with attributes and blocks configured for the `connection_tracking_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `connection_persistence_on_unhealthy_backends` (`string`): Specifies connection persistence when backends are unhealthy.\n\nIf set to &#39;DEFAULT_FOR_PROTOCOL&#39;, the existing connections persist on\nunhealthy backends only for connection-oriented protocols (TCP and SCTP)\nand only if the Tracking Mode is PER_CONNECTION (default tracking mode)\nor the Session Affinity is configured for 5-tuple. They do not persist\nfor UDP.\n\nIf set to &#39;NEVER_PERSIST&#39;, after a backend becomes unhealthy, the existing\nconnections on the unhealthy backend are never persisted on the unhealthy\nbackend. They are always diverted to newly selected healthy backends\n(unless all backends are unhealthy).\n\nIf set to &#39;ALWAYS_PERSIST&#39;, existing connections always persist on\nunhealthy backends regardless of protocol and session affinity. It is\ngenerally not recommended to use this mode overriding the default. Default value: &#34;DEFAULT_FOR_PROTOCOL&#34; Possible values: [&#34;DEFAULT_FOR_PROTOCOL&#34;, &#34;NEVER_PERSIST&#34;, &#34;ALWAYS_PERSIST&#34;] When `null`, the `connection_persistence_on_unhealthy_backends` field will be omitted from the resulting object.\n  - `enable_strong_affinity` (`bool`): Enable Strong Session Affinity for Network Load Balancing. This option is not available publicly. When `null`, the `enable_strong_affinity` field will be omitted from the resulting object.\n  - `idle_timeout_sec` (`number`): Specifies how long to keep a Connection Tracking entry while there is\nno matching traffic (in seconds).\n\nFor L4 ILB the minimum(default) is 10 minutes and maximum is 16 hours.\n\nFor NLB the minimum(default) is 60 seconds and the maximum is 16 hours. When `null`, the `idle_timeout_sec` field will be omitted from the resulting object.\n  - `tracking_mode` (`string`): Specifies the key used for connection tracking. There are two options:\n&#39;PER_CONNECTION&#39;: The Connection Tracking is performed as per the\nConnection Key (default Hash Method) for the specific protocol.\n\n&#39;PER_SESSION&#39;: The Connection Tracking is performed as per the\nconfigured Session Affinity. It matches the configured Session Affinity. Default value: &#34;PER_CONNECTION&#34; Possible values: [&#34;PER_CONNECTION&#34;, &#34;PER_SESSION&#34;] When `null`, the `tracking_mode` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `connection_tracking_policy` sub block.\n', args=[]),
    new(
      connection_persistence_on_unhealthy_backends=null,
      enable_strong_affinity=null,
      idle_timeout_sec=null,
      tracking_mode=null
    ):: std.prune(a={
      connection_persistence_on_unhealthy_backends: connection_persistence_on_unhealthy_backends,
      enable_strong_affinity: enable_strong_affinity,
      idle_timeout_sec: idle_timeout_sec,
      tracking_mode: tracking_mode,
    }),
  },
  consistent_hash:: {
    http_cookie:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.consistent_hash.http_cookie.new` constructs a new object with attributes and blocks configured for the `http_cookie`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the cookie. When `null`, the `name` field will be omitted from the resulting object.\n  - `path` (`string`): Path to set for the cookie. When `null`, the `path` field will be omitted from the resulting object.\n  - `ttl` (`list[obj]`): Lifetime of the cookie. When `null`, the `ttl` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.consistent_hash.http_cookie.ttl.new](#fn-consistent_hashconsistent_hashttlnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `http_cookie` sub block.\n', args=[]),
      new(
        name=null,
        path=null,
        ttl=null
      ):: std.prune(a={
        name: name,
        path: path,
        ttl: ttl,
      }),
      ttl:: {
        '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.consistent_hash.http_cookie.ttl.new` constructs a new object with attributes and blocks configured for the `ttl`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond\nresolution. Durations less than one second are represented\nwith a 0 seconds field and a positive nanos field. Must\nbe from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Span of time at a resolution of a second.\nMust be from 0 to 315,576,000,000 inclusive.\n\n**Returns**:\n  - An attribute object that represents the `ttl` sub block.\n', args=[]),
        new(
          seconds,
          nanos=null
        ):: std.prune(a={
          nanos: nanos,
          seconds: seconds,
        }),
      },
    },
    '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.consistent_hash.new` constructs a new object with attributes and blocks configured for the `consistent_hash`\nTerraform sub block.\n\n\n\n**Args**:\n  - `http_header_name` (`string`): The hash based on the value of the specified header field.\nThis field is applicable if the sessionAffinity is set to HEADER_FIELD. When `null`, the `http_header_name` field will be omitted from the resulting object.\n  - `minimum_ring_size` (`number`): The minimum number of virtual nodes to use for the hash ring.\nLarger ring sizes result in more granular load\ndistributions. If the number of hosts in the load balancing pool\nis larger than the ring size, each host will be assigned a single\nvirtual node.\nDefaults to 1024. When `null`, the `minimum_ring_size` field will be omitted from the resulting object.\n  - `http_cookie` (`list[obj]`): Hash is based on HTTP Cookie. This field describes a HTTP cookie\nthat will be used as the hash key for the consistent hash load\nbalancer. If the cookie is not present, it will be generated.\nThis field is applicable if the sessionAffinity is set to HTTP_COOKIE. When `null`, the `http_cookie` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.consistent_hash.http_cookie.new](#fn-consistent_hashhttp_cookienew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `consistent_hash` sub block.\n', args=[]),
    new(
      http_cookie=null,
      http_header_name=null,
      minimum_ring_size=null
    ):: std.prune(a={
      http_cookie: http_cookie,
      http_header_name: http_header_name,
      minimum_ring_size: minimum_ring_size,
    }),
  },
  failover_policy:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.failover_policy.new` constructs a new object with attributes and blocks configured for the `failover_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disable_connection_drain_on_failover` (`bool`): On failover or failback, this field indicates whether connection drain\nwill be honored. Setting this to true has the following effect: connections\nto the old active pool are not drained. Connections to the new active pool\nuse the timeout of 10 min (currently fixed). Setting to false has the\nfollowing effect: both old and new connections will have a drain timeout\nof 10 min.\nThis can be set to true only if the protocol is TCP.\nThe default is false. When `null`, the `disable_connection_drain_on_failover` field will be omitted from the resulting object.\n  - `drop_traffic_if_unhealthy` (`bool`): This option is used only when no healthy VMs are detected in the primary\nand backup instance groups. When set to true, traffic is dropped. When\nset to false, new connections are sent across all VMs in the primary group.\nThe default is false. When `null`, the `drop_traffic_if_unhealthy` field will be omitted from the resulting object.\n  - `failover_ratio` (`number`): The value of the field must be in [0, 1]. If the ratio of the healthy\nVMs in the primary backend is at or below this number, traffic arriving\nat the load-balanced IP will be directed to the failover backend.\nIn case where &#39;failoverRatio&#39; is not set or all the VMs in the backup\nbackend are unhealthy, the traffic will be directed back to the primary\nbackend in the &#34;force&#34; mode, where traffic will be spread to the healthy\nVMs with the best effort, or to all VMs when no VM is healthy.\nThis field is only used with l4 load balancing. When `null`, the `failover_ratio` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `failover_policy` sub block.\n', args=[]),
    new(
      disable_connection_drain_on_failover=null,
      drop_traffic_if_unhealthy=null,
      failover_ratio=null
    ):: std.prune(a={
      disable_connection_drain_on_failover: disable_connection_drain_on_failover,
      drop_traffic_if_unhealthy: drop_traffic_if_unhealthy,
      failover_ratio: failover_ratio,
    }),
  },
  iap:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.iap.new` constructs a new object with attributes and blocks configured for the `iap`\nTerraform sub block.\n\n\n\n**Args**:\n  - `oauth2_client_id` (`string`): OAuth2 Client ID for IAP\n  - `oauth2_client_secret` (`string`): OAuth2 Client Secret for IAP\n\n**Returns**:\n  - An attribute object that represents the `iap` sub block.\n', args=[]),
    new(
      oauth2_client_id,
      oauth2_client_secret
    ):: std.prune(a={
      oauth2_client_id: oauth2_client_id,
      oauth2_client_secret: oauth2_client_secret,
    }),
  },
  log_config:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable` (`bool`): Whether to enable logging for the load balancer traffic served by this backend service. When `null`, the `enable` field will be omitted from the resulting object.\n  - `sample_rate` (`number`): This field can only be specified if logging is enabled for this backend service. The value of\nthe field must be in [0, 1]. This configures the sampling rate of requests to the load balancer\nwhere 1.0 means all logged requests are reported and 0.0 means no logged requests are reported.\nThe default value is 1.0. When `null`, the `sample_rate` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `log_config` sub block.\n', args=[]),
    new(
      enable=null,
      sample_rate=null
    ):: std.prune(a={
      enable: enable,
      sample_rate: sample_rate,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_compute_region_backend_service.new` injects a new `google-beta_google_compute_region_backend_service` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_compute_region_backend_service.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_compute_region_backend_service` using the reference:\n\n    $._ref.google-beta_google_compute_region_backend_service.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_compute_region_backend_service.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `affinity_cookie_ttl_sec` (`number`): Lifetime of cookies in seconds if session_affinity is\nGENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts\nonly until the end of the browser session (or equivalent). The\nmaximum allowed value for TTL is one day.\n\nWhen the load balancing scheme is INTERNAL, this field is not used. When `null`, the `affinity_cookie_ttl_sec` field will be omitted from the resulting object.\n  - `connection_draining_timeout_sec` (`number`): Time for which instance will be drained (not accept new\nconnections, but still work to finish started). When `null`, the `connection_draining_timeout_sec` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `enable_cdn` (`bool`): If true, enable Cloud CDN for this RegionBackendService. When `null`, the `enable_cdn` field will be omitted from the resulting object.\n  - `health_checks` (`list`): The set of URLs to HealthCheck resources for health checking\nthis RegionBackendService. Currently at most one health\ncheck can be specified.\n\nA health check must be specified unless the backend service uses an internet\nor serverless NEG as a backend. When `null`, the `health_checks` field will be omitted from the resulting object.\n  - `load_balancing_scheme` (`string`): Indicates what kind of load balancing this regional backend service\nwill be used for. A backend service created for one type of load\nbalancing cannot be used with the other(s). For more information, refer to\n[Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service). Default value: \u0026#34;INTERNAL\u0026#34; Possible values: [\u0026#34;EXTERNAL\u0026#34;, \u0026#34;EXTERNAL_MANAGED\u0026#34;, \u0026#34;INTERNAL\u0026#34;, \u0026#34;INTERNAL_MANAGED\u0026#34;] When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.\n  - `locality_lb_policy` (`string`): The load balancing algorithm used within the scope of the locality.\nThe possible values are:\n\n* \u0026#39;ROUND_ROBIN\u0026#39;: This is a simple policy in which each healthy backend\n                 is selected in round robin order.\n\n* \u0026#39;LEAST_REQUEST\u0026#39;: An O(1) algorithm which selects two random healthy\n                   hosts and picks the host which has fewer active requests.\n\n* \u0026#39;RING_HASH\u0026#39;: The ring/modulo hash load balancer implements consistent\n               hashing to backends. The algorithm has the property that the\n               addition/removal of a host from a set of N hosts only affects\n               1/N of the requests.\n\n* \u0026#39;RANDOM\u0026#39;: The load balancer selects a random healthy host.\n\n* \u0026#39;ORIGINAL_DESTINATION\u0026#39;: Backend host is selected based on the client\n                          connection metadata, i.e., connections are opened\n                          to the same address as the destination address of\n                          the incoming connection before the connection\n                          was redirected to the load balancer.\n\n* \u0026#39;MAGLEV\u0026#39;: used as a drop in replacement for the ring hash load balancer.\n            Maglev is not as stable as ring hash but has faster table lookup\n            build times and host selection times. For more information about\n            Maglev, refer to https://ai.google/research/pubs/pub44824\n\n* \u0026#39;WEIGHTED_MAGLEV\u0026#39;: Per-instance weighted Load Balancing via health check\n                     reported weights. If set, the Backend Service must\n                     configure a non legacy HTTP-based Health Check, and\n                     health check replies are expected to contain\n                     non-standard HTTP response header field\n                     X-Load-Balancing-Endpoint-Weight to specify the\n                     per-instance weights. If set, Load Balancing is weight\n                     based on the per-instance weights reported in the last\n                     processed health check replies, as long as every\n                     instance either reported a valid weight or had\n                     UNAVAILABLE_WEIGHT. Otherwise, Load Balancing remains\n                     equal-weight.\n\n\nThis field is applicable to either:\n\n* A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2,\n  and loadBalancingScheme set to INTERNAL_MANAGED.\n* A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.\n* A regional backend service with loadBalancingScheme set to EXTERNAL (External Network\n  Load Balancing). Only MAGLEV and WEIGHTED_MAGLEV values are possible for External\n  Network Load Balancing. The default is MAGLEV.\n\n\nIf session_affinity is not NONE, and this field is not set to MAGLEV, WEIGHTED_MAGLEV,\nor RING_HASH, session affinity settings will not take effect.\n\nOnly ROUND_ROBIN and RING_HASH are supported when the backend service is referenced\nby a URL map that is bound to target gRPC proxy that has validate_for_proxyless\nfield set to true. Possible values: [\u0026#34;ROUND_ROBIN\u0026#34;, \u0026#34;LEAST_REQUEST\u0026#34;, \u0026#34;RING_HASH\u0026#34;, \u0026#34;RANDOM\u0026#34;, \u0026#34;ORIGINAL_DESTINATION\u0026#34;, \u0026#34;MAGLEV\u0026#34;, \u0026#34;WEIGHTED_MAGLEV\u0026#34;] When `null`, the `locality_lb_policy` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network` (`string`): The URL of the network to which this backend service belongs.\nThis field can only be specified when the load balancing scheme is set to INTERNAL. When `null`, the `network` field will be omitted from the resulting object.\n  - `port_name` (`string`): A named port on a backend instance group representing the port for\ncommunication to the backend VMs in that group. Required when the\nloadBalancingScheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED, or INTERNAL_SELF_MANAGED\nand the backends are instance groups. The named port must be defined on each\nbackend instance group. This parameter has no meaning if the backends are NEGs. API sets a\ndefault of \u0026#34;http\u0026#34; if not given.\nMust be omitted when the loadBalancingScheme is INTERNAL (Internal TCP/UDP Load Balancing). When `null`, the `port_name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `protocol` (`string`): The protocol this RegionBackendService uses to communicate with backends.\nThe default is HTTP. **NOTE**: HTTP2 is only valid for beta HTTP/2 load balancer\ntypes and may result in errors if used with the GA API. Possible values: [\u0026#34;HTTP\u0026#34;, \u0026#34;HTTPS\u0026#34;, \u0026#34;HTTP2\u0026#34;, \u0026#34;SSL\u0026#34;, \u0026#34;TCP\u0026#34;, \u0026#34;UDP\u0026#34;, \u0026#34;GRPC\u0026#34;, \u0026#34;UNSPECIFIED\u0026#34;] When `null`, the `protocol` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created backend service should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `security_policy` (`string`): The security policy associated with this backend service. When `null`, the `security_policy` field will be omitted from the resulting object.\n  - `session_affinity` (`string`): Type of session affinity to use. The default is NONE. Session affinity is\nnot applicable if the protocol is UDP. Possible values: [\u0026#34;NONE\u0026#34;, \u0026#34;CLIENT_IP\u0026#34;, \u0026#34;CLIENT_IP_PORT_PROTO\u0026#34;, \u0026#34;CLIENT_IP_PROTO\u0026#34;, \u0026#34;GENERATED_COOKIE\u0026#34;, \u0026#34;HEADER_FIELD\u0026#34;, \u0026#34;HTTP_COOKIE\u0026#34;, \u0026#34;CLIENT_IP_NO_DESTINATION\u0026#34;] When `null`, the `session_affinity` field will be omitted from the resulting object.\n  - `timeout_sec` (`number`): How many seconds to wait for the backend before considering it a\nfailed request. Default is 30 seconds. Valid range is [1, 86400]. When `null`, the `timeout_sec` field will be omitted from the resulting object.\n  - `backend` (`list[obj]`): The set of backends that serve this RegionBackendService. When `null`, the `backend` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.backend.new](#fn-backendnew) constructor.\n  - `cdn_policy` (`list[obj]`): Cloud CDN configuration for this BackendService. When `null`, the `cdn_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.cdn_policy.new](#fn-cdn_policynew) constructor.\n  - `circuit_breakers` (`list[obj]`): Settings controlling the volume of connections to a backend service. This field\nis applicable only when the \u0026#39;load_balancing_scheme\u0026#39; is set to INTERNAL_MANAGED\nand the \u0026#39;protocol\u0026#39; is set to HTTP, HTTPS, or HTTP2. When `null`, the `circuit_breakers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.circuit_breakers.new](#fn-circuit_breakersnew) constructor.\n  - `connection_tracking_policy` (`list[obj]`): Connection Tracking configuration for this BackendService.\nThis is available only for Layer 4 Internal Load Balancing and\nNetwork Load Balancing. When `null`, the `connection_tracking_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.connection_tracking_policy.new](#fn-connection_tracking_policynew) constructor.\n  - `consistent_hash` (`list[obj]`): Consistent Hash-based load balancing can be used to provide soft session\naffinity based on HTTP headers, cookies or other properties. This load balancing\npolicy is applicable only for HTTP connections. The affinity to a particular\ndestination host will be lost when one or more hosts are added/removed from the\ndestination service. This field specifies parameters that control consistent\nhashing.\nThis field only applies when all of the following are true -\n  * \u0026#39;load_balancing_scheme\u0026#39; is set to INTERNAL_MANAGED\n  * \u0026#39;protocol\u0026#39; is set to HTTP, HTTPS, or HTTP2\n  * \u0026#39;locality_lb_policy\u0026#39; is set to MAGLEV or RING_HASH When `null`, the `consistent_hash` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.consistent_hash.new](#fn-consistent_hashnew) constructor.\n  - `failover_policy` (`list[obj]`): Policy for failovers. When `null`, the `failover_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.failover_policy.new](#fn-failover_policynew) constructor.\n  - `iap` (`list[obj]`): Settings for enabling Cloud Identity Aware Proxy When `null`, the `iap` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.iap.new](#fn-iapnew) constructor.\n  - `log_config` (`list[obj]`): This field denotes the logging options for the load balancer traffic served by this backend service.\nIf logging is enabled, logs will be exported to Stackdriver. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.log_config.new](#fn-log_confignew) constructor.\n  - `outlier_detection` (`list[obj]`): Settings controlling eviction of unhealthy hosts from the load balancing pool.\nThis field is applicable only when the \u0026#39;load_balancing_scheme\u0026#39; is set\nto INTERNAL_MANAGED and the \u0026#39;protocol\u0026#39; is set to HTTP, HTTPS, or HTTP2. When `null`, the `outlier_detection` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.outlier_detection.new](#fn-outlier_detectionnew) constructor.\n  - `subsetting` (`list[obj]`): Subsetting configuration for this BackendService. Currently this is applicable only for Internal TCP/UDP load balancing and Internal HTTP(S) load balancing. When `null`, the `subsetting` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.subsetting.new](#fn-subsettingnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    affinity_cookie_ttl_sec=null,
    backend=null,
    cdn_policy=null,
    circuit_breakers=null,
    connection_draining_timeout_sec=null,
    connection_tracking_policy=null,
    consistent_hash=null,
    description=null,
    enable_cdn=null,
    failover_policy=null,
    health_checks=null,
    iap=null,
    load_balancing_scheme=null,
    locality_lb_policy=null,
    log_config=null,
    network=null,
    outlier_detection=null,
    port_name=null,
    project=null,
    protocol=null,
    region=null,
    security_policy=null,
    session_affinity=null,
    subsetting=null,
    timeout_sec=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_backend_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      affinity_cookie_ttl_sec=affinity_cookie_ttl_sec,
      backend=backend,
      cdn_policy=cdn_policy,
      circuit_breakers=circuit_breakers,
      connection_draining_timeout_sec=connection_draining_timeout_sec,
      connection_tracking_policy=connection_tracking_policy,
      consistent_hash=consistent_hash,
      description=description,
      enable_cdn=enable_cdn,
      failover_policy=failover_policy,
      health_checks=health_checks,
      iap=iap,
      load_balancing_scheme=load_balancing_scheme,
      locality_lb_policy=locality_lb_policy,
      log_config=log_config,
      name=name,
      network=network,
      outlier_detection=outlier_detection,
      port_name=port_name,
      project=project,
      protocol=protocol,
      region=region,
      security_policy=security_policy,
      session_affinity=session_affinity,
      subsetting=subsetting,
      timeout_sec=timeout_sec,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_compute_region_backend_service.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_region_backend_service`\nTerraform resource.\n\nUnlike [google-beta.google_compute_region_backend_service.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `affinity_cookie_ttl_sec` (`number`): Lifetime of cookies in seconds if session_affinity is\nGENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts\nonly until the end of the browser session (or equivalent). The\nmaximum allowed value for TTL is one day.\n\nWhen the load balancing scheme is INTERNAL, this field is not used. When `null`, the `affinity_cookie_ttl_sec` field will be omitted from the resulting object.\n  - `connection_draining_timeout_sec` (`number`): Time for which instance will be drained (not accept new\nconnections, but still work to finish started). When `null`, the `connection_draining_timeout_sec` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `enable_cdn` (`bool`): If true, enable Cloud CDN for this RegionBackendService. When `null`, the `enable_cdn` field will be omitted from the resulting object.\n  - `health_checks` (`list`): The set of URLs to HealthCheck resources for health checking\nthis RegionBackendService. Currently at most one health\ncheck can be specified.\n\nA health check must be specified unless the backend service uses an internet\nor serverless NEG as a backend. When `null`, the `health_checks` field will be omitted from the resulting object.\n  - `load_balancing_scheme` (`string`): Indicates what kind of load balancing this regional backend service\nwill be used for. A backend service created for one type of load\nbalancing cannot be used with the other(s). For more information, refer to\n[Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service). Default value: &#34;INTERNAL&#34; Possible values: [&#34;EXTERNAL&#34;, &#34;EXTERNAL_MANAGED&#34;, &#34;INTERNAL&#34;, &#34;INTERNAL_MANAGED&#34;] When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.\n  - `locality_lb_policy` (`string`): The load balancing algorithm used within the scope of the locality.\nThe possible values are:\n\n* &#39;ROUND_ROBIN&#39;: This is a simple policy in which each healthy backend\n                 is selected in round robin order.\n\n* &#39;LEAST_REQUEST&#39;: An O(1) algorithm which selects two random healthy\n                   hosts and picks the host which has fewer active requests.\n\n* &#39;RING_HASH&#39;: The ring/modulo hash load balancer implements consistent\n               hashing to backends. The algorithm has the property that the\n               addition/removal of a host from a set of N hosts only affects\n               1/N of the requests.\n\n* &#39;RANDOM&#39;: The load balancer selects a random healthy host.\n\n* &#39;ORIGINAL_DESTINATION&#39;: Backend host is selected based on the client\n                          connection metadata, i.e., connections are opened\n                          to the same address as the destination address of\n                          the incoming connection before the connection\n                          was redirected to the load balancer.\n\n* &#39;MAGLEV&#39;: used as a drop in replacement for the ring hash load balancer.\n            Maglev is not as stable as ring hash but has faster table lookup\n            build times and host selection times. For more information about\n            Maglev, refer to https://ai.google/research/pubs/pub44824\n\n* &#39;WEIGHTED_MAGLEV&#39;: Per-instance weighted Load Balancing via health check\n                     reported weights. If set, the Backend Service must\n                     configure a non legacy HTTP-based Health Check, and\n                     health check replies are expected to contain\n                     non-standard HTTP response header field\n                     X-Load-Balancing-Endpoint-Weight to specify the\n                     per-instance weights. If set, Load Balancing is weight\n                     based on the per-instance weights reported in the last\n                     processed health check replies, as long as every\n                     instance either reported a valid weight or had\n                     UNAVAILABLE_WEIGHT. Otherwise, Load Balancing remains\n                     equal-weight.\n\n\nThis field is applicable to either:\n\n* A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2,\n  and loadBalancingScheme set to INTERNAL_MANAGED.\n* A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.\n* A regional backend service with loadBalancingScheme set to EXTERNAL (External Network\n  Load Balancing). Only MAGLEV and WEIGHTED_MAGLEV values are possible for External\n  Network Load Balancing. The default is MAGLEV.\n\n\nIf session_affinity is not NONE, and this field is not set to MAGLEV, WEIGHTED_MAGLEV,\nor RING_HASH, session affinity settings will not take effect.\n\nOnly ROUND_ROBIN and RING_HASH are supported when the backend service is referenced\nby a URL map that is bound to target gRPC proxy that has validate_for_proxyless\nfield set to true. Possible values: [&#34;ROUND_ROBIN&#34;, &#34;LEAST_REQUEST&#34;, &#34;RING_HASH&#34;, &#34;RANDOM&#34;, &#34;ORIGINAL_DESTINATION&#34;, &#34;MAGLEV&#34;, &#34;WEIGHTED_MAGLEV&#34;] When `null`, the `locality_lb_policy` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network` (`string`): The URL of the network to which this backend service belongs.\nThis field can only be specified when the load balancing scheme is set to INTERNAL. When `null`, the `network` field will be omitted from the resulting object.\n  - `port_name` (`string`): A named port on a backend instance group representing the port for\ncommunication to the backend VMs in that group. Required when the\nloadBalancingScheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED, or INTERNAL_SELF_MANAGED\nand the backends are instance groups. The named port must be defined on each\nbackend instance group. This parameter has no meaning if the backends are NEGs. API sets a\ndefault of &#34;http&#34; if not given.\nMust be omitted when the loadBalancingScheme is INTERNAL (Internal TCP/UDP Load Balancing). When `null`, the `port_name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `protocol` (`string`): The protocol this RegionBackendService uses to communicate with backends.\nThe default is HTTP. **NOTE**: HTTP2 is only valid for beta HTTP/2 load balancer\ntypes and may result in errors if used with the GA API. Possible values: [&#34;HTTP&#34;, &#34;HTTPS&#34;, &#34;HTTP2&#34;, &#34;SSL&#34;, &#34;TCP&#34;, &#34;UDP&#34;, &#34;GRPC&#34;, &#34;UNSPECIFIED&#34;] When `null`, the `protocol` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created backend service should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `security_policy` (`string`): The security policy associated with this backend service. When `null`, the `security_policy` field will be omitted from the resulting object.\n  - `session_affinity` (`string`): Type of session affinity to use. The default is NONE. Session affinity is\nnot applicable if the protocol is UDP. Possible values: [&#34;NONE&#34;, &#34;CLIENT_IP&#34;, &#34;CLIENT_IP_PORT_PROTO&#34;, &#34;CLIENT_IP_PROTO&#34;, &#34;GENERATED_COOKIE&#34;, &#34;HEADER_FIELD&#34;, &#34;HTTP_COOKIE&#34;, &#34;CLIENT_IP_NO_DESTINATION&#34;] When `null`, the `session_affinity` field will be omitted from the resulting object.\n  - `timeout_sec` (`number`): How many seconds to wait for the backend before considering it a\nfailed request. Default is 30 seconds. Valid range is [1, 86400]. When `null`, the `timeout_sec` field will be omitted from the resulting object.\n  - `backend` (`list[obj]`): The set of backends that serve this RegionBackendService. When `null`, the `backend` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.backend.new](#fn-backendnew) constructor.\n  - `cdn_policy` (`list[obj]`): Cloud CDN configuration for this BackendService. When `null`, the `cdn_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.cdn_policy.new](#fn-cdn_policynew) constructor.\n  - `circuit_breakers` (`list[obj]`): Settings controlling the volume of connections to a backend service. This field\nis applicable only when the &#39;load_balancing_scheme&#39; is set to INTERNAL_MANAGED\nand the &#39;protocol&#39; is set to HTTP, HTTPS, or HTTP2. When `null`, the `circuit_breakers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.circuit_breakers.new](#fn-circuit_breakersnew) constructor.\n  - `connection_tracking_policy` (`list[obj]`): Connection Tracking configuration for this BackendService.\nThis is available only for Layer 4 Internal Load Balancing and\nNetwork Load Balancing. When `null`, the `connection_tracking_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.connection_tracking_policy.new](#fn-connection_tracking_policynew) constructor.\n  - `consistent_hash` (`list[obj]`): Consistent Hash-based load balancing can be used to provide soft session\naffinity based on HTTP headers, cookies or other properties. This load balancing\npolicy is applicable only for HTTP connections. The affinity to a particular\ndestination host will be lost when one or more hosts are added/removed from the\ndestination service. This field specifies parameters that control consistent\nhashing.\nThis field only applies when all of the following are true -\n  * &#39;load_balancing_scheme&#39; is set to INTERNAL_MANAGED\n  * &#39;protocol&#39; is set to HTTP, HTTPS, or HTTP2\n  * &#39;locality_lb_policy&#39; is set to MAGLEV or RING_HASH When `null`, the `consistent_hash` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.consistent_hash.new](#fn-consistent_hashnew) constructor.\n  - `failover_policy` (`list[obj]`): Policy for failovers. When `null`, the `failover_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.failover_policy.new](#fn-failover_policynew) constructor.\n  - `iap` (`list[obj]`): Settings for enabling Cloud Identity Aware Proxy When `null`, the `iap` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.iap.new](#fn-iapnew) constructor.\n  - `log_config` (`list[obj]`): This field denotes the logging options for the load balancer traffic served by this backend service.\nIf logging is enabled, logs will be exported to Stackdriver. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.log_config.new](#fn-log_confignew) constructor.\n  - `outlier_detection` (`list[obj]`): Settings controlling eviction of unhealthy hosts from the load balancing pool.\nThis field is applicable only when the &#39;load_balancing_scheme&#39; is set\nto INTERNAL_MANAGED and the &#39;protocol&#39; is set to HTTP, HTTPS, or HTTP2. When `null`, the `outlier_detection` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.outlier_detection.new](#fn-outlier_detectionnew) constructor.\n  - `subsetting` (`list[obj]`): Subsetting configuration for this BackendService. Currently this is applicable only for Internal TCP/UDP load balancing and Internal HTTP(S) load balancing. When `null`, the `subsetting` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.subsetting.new](#fn-subsettingnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_region_backend_service` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    affinity_cookie_ttl_sec=null,
    backend=null,
    cdn_policy=null,
    circuit_breakers=null,
    connection_draining_timeout_sec=null,
    connection_tracking_policy=null,
    consistent_hash=null,
    description=null,
    enable_cdn=null,
    failover_policy=null,
    health_checks=null,
    iap=null,
    load_balancing_scheme=null,
    locality_lb_policy=null,
    log_config=null,
    network=null,
    outlier_detection=null,
    port_name=null,
    project=null,
    protocol=null,
    region=null,
    security_policy=null,
    session_affinity=null,
    subsetting=null,
    timeout_sec=null,
    timeouts=null
  ):: std.prune(a={
    affinity_cookie_ttl_sec: affinity_cookie_ttl_sec,
    backend: backend,
    cdn_policy: cdn_policy,
    circuit_breakers: circuit_breakers,
    connection_draining_timeout_sec: connection_draining_timeout_sec,
    connection_tracking_policy: connection_tracking_policy,
    consistent_hash: consistent_hash,
    description: description,
    enable_cdn: enable_cdn,
    failover_policy: failover_policy,
    health_checks: health_checks,
    iap: iap,
    load_balancing_scheme: load_balancing_scheme,
    locality_lb_policy: locality_lb_policy,
    log_config: log_config,
    name: name,
    network: network,
    outlier_detection: outlier_detection,
    port_name: port_name,
    project: project,
    protocol: protocol,
    region: region,
    security_policy: security_policy,
    session_affinity: session_affinity,
    subsetting: subsetting,
    timeout_sec: timeout_sec,
    timeouts: timeouts,
  }),
  outlier_detection:: {
    base_ejection_time:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.outlier_detection.base_ejection_time.new` constructs a new object with attributes and blocks configured for the `base_ejection_time`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations\nless than one second are represented with a 0 &#39;seconds&#39; field and a positive\n&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000\ninclusive.\n\n**Returns**:\n  - An attribute object that represents the `base_ejection_time` sub block.\n', args=[]),
      new(
        seconds,
        nanos=null
      ):: std.prune(a={
        nanos: nanos,
        seconds: seconds,
      }),
    },
    interval:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.outlier_detection.interval.new` constructs a new object with attributes and blocks configured for the `interval`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations\nless than one second are represented with a 0 &#39;seconds&#39; field and a positive\n&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000\ninclusive.\n\n**Returns**:\n  - An attribute object that represents the `interval` sub block.\n', args=[]),
      new(
        seconds,
        nanos=null
      ):: std.prune(a={
        nanos: nanos,
        seconds: seconds,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.outlier_detection.new` constructs a new object with attributes and blocks configured for the `outlier_detection`\nTerraform sub block.\n\n\n\n**Args**:\n  - `consecutive_errors` (`number`): Number of errors before a host is ejected from the connection pool. When the\nbackend host is accessed over HTTP, a 5xx return code qualifies as an error.\nDefaults to 5. When `null`, the `consecutive_errors` field will be omitted from the resulting object.\n  - `consecutive_gateway_failure` (`number`): The number of consecutive gateway failures (502, 503, 504 status or connection\nerrors that are mapped to one of those status codes) before a consecutive\ngateway failure ejection occurs. Defaults to 5. When `null`, the `consecutive_gateway_failure` field will be omitted from the resulting object.\n  - `enforcing_consecutive_errors` (`number`): The percentage chance that a host will be actually ejected when an outlier\nstatus is detected through consecutive 5xx. This setting can be used to disable\nejection or to ramp it up slowly. Defaults to 100. When `null`, the `enforcing_consecutive_errors` field will be omitted from the resulting object.\n  - `enforcing_consecutive_gateway_failure` (`number`): The percentage chance that a host will be actually ejected when an outlier\nstatus is detected through consecutive gateway failures. This setting can be\nused to disable ejection or to ramp it up slowly. Defaults to 0. When `null`, the `enforcing_consecutive_gateway_failure` field will be omitted from the resulting object.\n  - `enforcing_success_rate` (`number`): The percentage chance that a host will be actually ejected when an outlier\nstatus is detected through success rate statistics. This setting can be used to\ndisable ejection or to ramp it up slowly. Defaults to 100. When `null`, the `enforcing_success_rate` field will be omitted from the resulting object.\n  - `max_ejection_percent` (`number`): Maximum percentage of hosts in the load balancing pool for the backend service\nthat can be ejected. Defaults to 10%. When `null`, the `max_ejection_percent` field will be omitted from the resulting object.\n  - `success_rate_minimum_hosts` (`number`): The number of hosts in a cluster that must have enough request volume to detect\nsuccess rate outliers. If the number of hosts is less than this setting, outlier\ndetection via success rate statistics is not performed for any host in the\ncluster. Defaults to 5. When `null`, the `success_rate_minimum_hosts` field will be omitted from the resulting object.\n  - `success_rate_request_volume` (`number`): The minimum number of total requests that must be collected in one interval (as\ndefined by the interval duration above) to include this host in success rate\nbased outlier detection. If the volume is lower than this setting, outlier\ndetection via success rate statistics is not performed for that host. Defaults\nto 100. When `null`, the `success_rate_request_volume` field will be omitted from the resulting object.\n  - `success_rate_stdev_factor` (`number`): This factor is used to determine the ejection threshold for success rate outlier\nejection. The ejection threshold is the difference between the mean success\nrate, and the product of this factor and the standard deviation of the mean\nsuccess rate: mean - (stdev * success_rate_stdev_factor). This factor is divided\nby a thousand to get a double. That is, if the desired factor is 1.9, the\nruntime value should be 1900. Defaults to 1900. When `null`, the `success_rate_stdev_factor` field will be omitted from the resulting object.\n  - `base_ejection_time` (`list[obj]`): The base time that a host is ejected for. The real time is equal to the base\ntime multiplied by the number of times the host has been ejected. Defaults to\n30000ms or 30s. When `null`, the `base_ejection_time` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.outlier_detection.base_ejection_time.new](#fn-outlier_detectionbase_ejection_timenew) constructor.\n  - `interval` (`list[obj]`): Time interval between ejection sweep analysis. This can result in both new\nejections as well as hosts being returned to service. Defaults to 10 seconds. When `null`, the `interval` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_backend_service.outlier_detection.interval.new](#fn-outlier_detectionintervalnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `outlier_detection` sub block.\n', args=[]),
    new(
      base_ejection_time=null,
      consecutive_errors=null,
      consecutive_gateway_failure=null,
      enforcing_consecutive_errors=null,
      enforcing_consecutive_gateway_failure=null,
      enforcing_success_rate=null,
      interval=null,
      max_ejection_percent=null,
      success_rate_minimum_hosts=null,
      success_rate_request_volume=null,
      success_rate_stdev_factor=null
    ):: std.prune(a={
      base_ejection_time: base_ejection_time,
      consecutive_errors: consecutive_errors,
      consecutive_gateway_failure: consecutive_gateway_failure,
      enforcing_consecutive_errors: enforcing_consecutive_errors,
      enforcing_consecutive_gateway_failure: enforcing_consecutive_gateway_failure,
      enforcing_success_rate: enforcing_success_rate,
      interval: interval,
      max_ejection_percent: max_ejection_percent,
      success_rate_minimum_hosts: success_rate_minimum_hosts,
      success_rate_request_volume: success_rate_request_volume,
      success_rate_stdev_factor: success_rate_stdev_factor,
    }),
  },
  subsetting:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.subsetting.new` constructs a new object with attributes and blocks configured for the `subsetting`\nTerraform sub block.\n\n\n\n**Args**:\n  - `policy` (`string`): The algorithm used for subsetting. Possible values: [&#34;CONSISTENT_HASH_SUBSETTING&#34;]\n\n**Returns**:\n  - An attribute object that represents the `subsetting` sub block.\n', args=[]),
    new(
      policy
    ):: std.prune(a={
      policy: policy,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_region_backend_service.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAffinityCookieTtlSec':: d.fn(help='`google-beta.number.withAffinityCookieTtlSec` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the affinity_cookie_ttl_sec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `affinity_cookie_ttl_sec` field.\n', args=[]),
  withAffinityCookieTtlSec(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          affinity_cookie_ttl_sec: value,
        },
      },
    },
  },
  '#withBackend':: d.fn(help='`google-beta.list[obj].withBackend` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the backend field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withBackendMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `backend` field.\n', args=[]),
  withBackend(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          backend: value,
        },
      },
    },
  },
  '#withBackendMixin':: d.fn(help='`google-beta.list[obj].withBackendMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the backend field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withBackend](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `backend` field.\n', args=[]),
  withBackendMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          backend+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCdnPolicy':: d.fn(help='`google-beta.list[obj].withCdnPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cdn_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withCdnPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cdn_policy` field.\n', args=[]),
  withCdnPolicy(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          cdn_policy: value,
        },
      },
    },
  },
  '#withCdnPolicyMixin':: d.fn(help='`google-beta.list[obj].withCdnPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cdn_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withCdnPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cdn_policy` field.\n', args=[]),
  withCdnPolicyMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          cdn_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCircuitBreakers':: d.fn(help='`google-beta.list[obj].withCircuitBreakers` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the circuit_breakers field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withCircuitBreakersMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `circuit_breakers` field.\n', args=[]),
  withCircuitBreakers(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          circuit_breakers: value,
        },
      },
    },
  },
  '#withCircuitBreakersMixin':: d.fn(help='`google-beta.list[obj].withCircuitBreakersMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the circuit_breakers field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withCircuitBreakers](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `circuit_breakers` field.\n', args=[]),
  withCircuitBreakersMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          circuit_breakers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withConnectionDrainingTimeoutSec':: d.fn(help='`google-beta.number.withConnectionDrainingTimeoutSec` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the connection_draining_timeout_sec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `connection_draining_timeout_sec` field.\n', args=[]),
  withConnectionDrainingTimeoutSec(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          connection_draining_timeout_sec: value,
        },
      },
    },
  },
  '#withConnectionTrackingPolicy':: d.fn(help='`google-beta.list[obj].withConnectionTrackingPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the connection_tracking_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withConnectionTrackingPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `connection_tracking_policy` field.\n', args=[]),
  withConnectionTrackingPolicy(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          connection_tracking_policy: value,
        },
      },
    },
  },
  '#withConnectionTrackingPolicyMixin':: d.fn(help='`google-beta.list[obj].withConnectionTrackingPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the connection_tracking_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withConnectionTrackingPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `connection_tracking_policy` field.\n', args=[]),
  withConnectionTrackingPolicyMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          connection_tracking_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withConsistentHash':: d.fn(help='`google-beta.list[obj].withConsistentHash` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the consistent_hash field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withConsistentHashMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `consistent_hash` field.\n', args=[]),
  withConsistentHash(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          consistent_hash: value,
        },
      },
    },
  },
  '#withConsistentHashMixin':: d.fn(help='`google-beta.list[obj].withConsistentHashMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the consistent_hash field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withConsistentHash](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `consistent_hash` field.\n', args=[]),
  withConsistentHashMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          consistent_hash+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEnableCdn':: d.fn(help='`google-beta.bool.withEnableCdn` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_cdn field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_cdn` field.\n', args=[]),
  withEnableCdn(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          enable_cdn: value,
        },
      },
    },
  },
  '#withFailoverPolicy':: d.fn(help='`google-beta.list[obj].withFailoverPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the failover_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withFailoverPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `failover_policy` field.\n', args=[]),
  withFailoverPolicy(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          failover_policy: value,
        },
      },
    },
  },
  '#withFailoverPolicyMixin':: d.fn(help='`google-beta.list[obj].withFailoverPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the failover_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withFailoverPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `failover_policy` field.\n', args=[]),
  withFailoverPolicyMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          failover_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withHealthChecks':: d.fn(help='`google-beta.list.withHealthChecks` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the health_checks field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `health_checks` field.\n', args=[]),
  withHealthChecks(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          health_checks: value,
        },
      },
    },
  },
  '#withIap':: d.fn(help='`google-beta.list[obj].withIap` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the iap field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withIapMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `iap` field.\n', args=[]),
  withIap(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          iap: value,
        },
      },
    },
  },
  '#withIapMixin':: d.fn(help='`google-beta.list[obj].withIapMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the iap field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withIap](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `iap` field.\n', args=[]),
  withIapMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          iap+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLoadBalancingScheme':: d.fn(help='`google-beta.string.withLoadBalancingScheme` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the load_balancing_scheme field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `load_balancing_scheme` field.\n', args=[]),
  withLoadBalancingScheme(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          load_balancing_scheme: value,
        },
      },
    },
  },
  '#withLocalityLbPolicy':: d.fn(help='`google-beta.string.withLocalityLbPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the locality_lb_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `locality_lb_policy` field.\n', args=[]),
  withLocalityLbPolicy(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          locality_lb_policy: value,
        },
      },
    },
  },
  '#withLogConfig':: d.fn(help='`google-beta.list[obj].withLogConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withLogConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfig(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          log_config: value,
        },
      },
    },
  },
  '#withLogConfigMixin':: d.fn(help='`google-beta.list[obj].withLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withLogConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google-beta.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withOutlierDetection':: d.fn(help='`google-beta.list[obj].withOutlierDetection` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the outlier_detection field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withOutlierDetectionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `outlier_detection` field.\n', args=[]),
  withOutlierDetection(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          outlier_detection: value,
        },
      },
    },
  },
  '#withOutlierDetectionMixin':: d.fn(help='`google-beta.list[obj].withOutlierDetectionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the outlier_detection field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withOutlierDetection](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `outlier_detection` field.\n', args=[]),
  withOutlierDetectionMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          outlier_detection+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPortName':: d.fn(help='`google-beta.string.withPortName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the port_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `port_name` field.\n', args=[]),
  withPortName(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          port_name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withProtocol':: d.fn(help='`google-beta.string.withProtocol` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the protocol field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `protocol` field.\n', args=[]),
  withProtocol(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          protocol: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withSecurityPolicy':: d.fn(help='`google-beta.string.withSecurityPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the security_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `security_policy` field.\n', args=[]),
  withSecurityPolicy(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          security_policy: value,
        },
      },
    },
  },
  '#withSessionAffinity':: d.fn(help='`google-beta.string.withSessionAffinity` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the session_affinity field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `session_affinity` field.\n', args=[]),
  withSessionAffinity(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          session_affinity: value,
        },
      },
    },
  },
  '#withSubsetting':: d.fn(help='`google-beta.list[obj].withSubsetting` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subsetting field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withSubsettingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subsetting` field.\n', args=[]),
  withSubsetting(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          subsetting: value,
        },
      },
    },
  },
  '#withSubsettingMixin':: d.fn(help='`google-beta.list[obj].withSubsettingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subsetting field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withSubsetting](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subsetting` field.\n', args=[]),
  withSubsettingMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          subsetting+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeoutSec':: d.fn(help='`google-beta.number.withTimeoutSec` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the timeout_sec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `timeout_sec` field.\n', args=[]),
  withTimeoutSec(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          timeout_sec: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
