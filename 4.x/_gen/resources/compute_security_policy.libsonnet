local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_compute_security_policy', url='', help='`google_compute_security_policy` represents the `google-beta_google_compute_security_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  adaptive_protection_config:: {
    auto_deploy_config:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.adaptive_protection_config.auto_deploy_config.new` constructs a new object with attributes and blocks configured for the `auto_deploy_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `confidence_threshold` (`number`): Rules are only automatically deployed for alerts on potential attacks with confidence scores greater than this threshold. When `null`, the `confidence_threshold` field will be omitted from the resulting object.\n  - `expiration_sec` (`number`): Google Cloud Armor stops applying the action in the automatically deployed rule to an identified attacker after this duration. The rule continues to operate against new requests. When `null`, the `expiration_sec` field will be omitted from the resulting object.\n  - `impacted_baseline_threshold` (`number`): Rules are only automatically deployed when the estimated impact to baseline traffic from the suggested mitigation is below this threshold. When `null`, the `impacted_baseline_threshold` field will be omitted from the resulting object.\n  - `load_threshold` (`number`): Identifies new attackers only when the load to the backend service that is under attack exceeds this threshold. When `null`, the `load_threshold` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `auto_deploy_config` sub block.\n', args=[]),
      new(
        confidence_threshold=null,
        expiration_sec=null,
        impacted_baseline_threshold=null,
        load_threshold=null
      ):: std.prune(a={
        confidence_threshold: confidence_threshold,
        expiration_sec: expiration_sec,
        impacted_baseline_threshold: impacted_baseline_threshold,
        load_threshold: load_threshold,
      }),
    },
    layer_7_ddos_defense_config:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.adaptive_protection_config.layer_7_ddos_defense_config.new` constructs a new object with attributes and blocks configured for the `layer_7_ddos_defense_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable` (`bool`): If set to true, enables CAAP for L7 DDoS detection. When `null`, the `enable` field will be omitted from the resulting object.\n  - `rule_visibility` (`string`): Rule visibility. Supported values include: &#34;STANDARD&#34;, &#34;PREMIUM&#34;. When `null`, the `rule_visibility` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `layer_7_ddos_defense_config` sub block.\n', args=[]),
      new(
        enable=null,
        rule_visibility=null
      ):: std.prune(a={
        enable: enable,
        rule_visibility: rule_visibility,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.adaptive_protection_config.new` constructs a new object with attributes and blocks configured for the `adaptive_protection_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auto_deploy_config` (`list[obj]`): Auto Deploy Config of this security policy When `null`, the `auto_deploy_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.adaptive_protection_config.auto_deploy_config.new](#fn-adaptive_protection_configauto_deploy_confignew) constructor.\n  - `layer_7_ddos_defense_config` (`list[obj]`): Layer 7 DDoS Defense Config of this security policy When `null`, the `layer_7_ddos_defense_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.adaptive_protection_config.layer_7_ddos_defense_config.new](#fn-adaptive_protection_configlayer_7_ddos_defense_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `adaptive_protection_config` sub block.\n', args=[]),
    new(
      auto_deploy_config=null,
      layer_7_ddos_defense_config=null
    ):: std.prune(a={
      auto_deploy_config: auto_deploy_config,
      layer_7_ddos_defense_config: layer_7_ddos_defense_config,
    }),
  },
  advanced_options_config:: {
    json_custom_config:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.advanced_options_config.json_custom_config.new` constructs a new object with attributes and blocks configured for the `json_custom_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `content_types` (`list`): A list of custom Content-Type header values to apply the JSON parsing.\n\n**Returns**:\n  - An attribute object that represents the `json_custom_config` sub block.\n', args=[]),
      new(
        content_types
      ):: std.prune(a={
        content_types: content_types,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.advanced_options_config.new` constructs a new object with attributes and blocks configured for the `advanced_options_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `json_parsing` (`string`): JSON body parsing. Supported values include: &#34;DISABLED&#34;, &#34;STANDARD&#34;. When `null`, the `json_parsing` field will be omitted from the resulting object.\n  - `log_level` (`string`): Logging level. Supported values include: &#34;NORMAL&#34;, &#34;VERBOSE&#34;. When `null`, the `log_level` field will be omitted from the resulting object.\n  - `user_ip_request_headers` (`list`): An optional list of case-insensitive request header names to use for resolving the callers client IP address. When `null`, the `user_ip_request_headers` field will be omitted from the resulting object.\n  - `json_custom_config` (`list[obj]`): Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD. When `null`, the `json_custom_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.advanced_options_config.json_custom_config.new](#fn-advanced_options_configjson_custom_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `advanced_options_config` sub block.\n', args=[]),
    new(
      json_custom_config=null,
      json_parsing=null,
      log_level=null,
      user_ip_request_headers=null
    ):: std.prune(a={
      json_custom_config: json_custom_config,
      json_parsing: json_parsing,
      log_level: log_level,
      user_ip_request_headers: user_ip_request_headers,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_compute_security_policy.new` injects a new `google-beta_google_compute_security_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_compute_security_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_compute_security_policy` using the reference:\n\n    $._ref.google-beta_google_compute_security_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_compute_security_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this security policy. Max size is 2048. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the security policy.\n  - `project` (`string`): The project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The type indicates the intended use of the security policy. CLOUD_ARMOR - Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. CLOUD_ARMOR_EDGE - Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google\u0026#39;s cache. When `null`, the `type` field will be omitted from the resulting object.\n  - `adaptive_protection_config` (`list[obj]`): Adaptive Protection Config of this security policy. When `null`, the `adaptive_protection_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.adaptive_protection_config.new](#fn-adaptive_protection_confignew) constructor.\n  - `advanced_options_config` (`list[obj]`): Advanced Options Config of this security policy. When `null`, the `advanced_options_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.advanced_options_config.new](#fn-advanced_options_confignew) constructor.\n  - `recaptcha_options_config` (`list[obj]`): reCAPTCHA configuration options to be applied for the security policy. When `null`, the `recaptcha_options_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.recaptcha_options_config.new](#fn-recaptcha_options_confignew) constructor.\n  - `rule` (`list[obj]`): The set of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match \u0026#34;*\u0026#34;). If no rules are provided when creating a security policy, a default rule with action \u0026#34;allow\u0026#34; will be added. When `null`, the `rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.new](#fn-rulenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    adaptive_protection_config=null,
    advanced_options_config=null,
    description=null,
    project=null,
    recaptcha_options_config=null,
    rule=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_security_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      adaptive_protection_config=adaptive_protection_config,
      advanced_options_config=advanced_options_config,
      description=description,
      name=name,
      project=project,
      recaptcha_options_config=recaptcha_options_config,
      rule=rule,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_compute_security_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_security_policy`\nTerraform resource.\n\nUnlike [google-beta.google_compute_security_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this security policy. Max size is 2048. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the security policy.\n  - `project` (`string`): The project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The type indicates the intended use of the security policy. CLOUD_ARMOR - Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. CLOUD_ARMOR_EDGE - Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google&#39;s cache. When `null`, the `type` field will be omitted from the resulting object.\n  - `adaptive_protection_config` (`list[obj]`): Adaptive Protection Config of this security policy. When `null`, the `adaptive_protection_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.adaptive_protection_config.new](#fn-adaptive_protection_confignew) constructor.\n  - `advanced_options_config` (`list[obj]`): Advanced Options Config of this security policy. When `null`, the `advanced_options_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.advanced_options_config.new](#fn-advanced_options_confignew) constructor.\n  - `recaptcha_options_config` (`list[obj]`): reCAPTCHA configuration options to be applied for the security policy. When `null`, the `recaptcha_options_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.recaptcha_options_config.new](#fn-recaptcha_options_confignew) constructor.\n  - `rule` (`list[obj]`): The set of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match &#34;*&#34;). If no rules are provided when creating a security policy, a default rule with action &#34;allow&#34; will be added. When `null`, the `rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.new](#fn-rulenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_security_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    adaptive_protection_config=null,
    advanced_options_config=null,
    description=null,
    project=null,
    recaptcha_options_config=null,
    rule=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    adaptive_protection_config: adaptive_protection_config,
    advanced_options_config: advanced_options_config,
    description: description,
    name: name,
    project: project,
    recaptcha_options_config: recaptcha_options_config,
    rule: rule,
    timeouts: timeouts,
    type: type,
  }),
  recaptcha_options_config:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.recaptcha_options_config.new` constructs a new object with attributes and blocks configured for the `recaptcha_options_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `redirect_site_key` (`string`): A field to supply a reCAPTCHA site key to be used for all the rules using the redirect action with the type of GOOGLE_RECAPTCHA under the security policy. The specified site key needs to be created from the reCAPTCHA API. The user is responsible for the validity of the specified site key. If not specified, a Google-managed site key is used.\n\n**Returns**:\n  - An attribute object that represents the `recaptcha_options_config` sub block.\n', args=[]),
    new(
      redirect_site_key
    ):: std.prune(a={
      redirect_site_key: redirect_site_key,
    }),
  },
  rule:: {
    header_action:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `request_headers_to_adds` (`list[obj]`): The list of request headers to add or overwrite if they&#39;re already present. When `null`, the `request_headers_to_adds` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.header_action.request_headers_to_adds.new](#fn-rulerulerequest_headers_to_addsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `header_action` sub block.\n', args=[]),
      new(
        request_headers_to_adds=null
      ):: std.prune(a={
        request_headers_to_adds: request_headers_to_adds,
      }),
      request_headers_to_adds:: {
        '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.header_action.request_headers_to_adds.new` constructs a new object with attributes and blocks configured for the `request_headers_to_adds`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header to set.\n  - `header_value` (`string`): The value to set the named header to. When `null`, the `header_value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `request_headers_to_adds` sub block.\n', args=[]),
        new(
          header_name,
          header_value=null
        ):: std.prune(a={
          header_name: header_name,
          header_value: header_value,
        }),
      },
    },
    match:: {
      config:: {
        '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.match.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `src_ip_ranges` (`list`): Set of IP addresses or ranges (IPV4 or IPV6) in CIDR notation to match against inbound traffic. There is a limit of 10 IP ranges per rule. A value of &#39;*&#39; matches all IPs (can be used to override the default behavior).\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
        new(
          src_ip_ranges
        ):: std.prune(a={
          src_ip_ranges: src_ip_ranges,
        }),
      },
      expr:: {
        '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.match.expr.new` constructs a new object with attributes and blocks configured for the `expr`\nTerraform sub block.\n\n\n\n**Args**:\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.\n\n**Returns**:\n  - An attribute object that represents the `expr` sub block.\n', args=[]),
        new(
          expression
        ):: std.prune(a={
          expression: expression,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.match.new` constructs a new object with attributes and blocks configured for the `match`\nTerraform sub block.\n\n\n\n**Args**:\n  - `versioned_expr` (`string`): Predefined rule expression. If this field is specified, config must also be specified. Available options:   SRC_IPS_V1: Must specify the corresponding src_ip_ranges field in config. When `null`, the `versioned_expr` field will be omitted from the resulting object.\n  - `config` (`list[obj]`): The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.match.config.new](#fn-ruleruleconfignew) constructor.\n  - `expr` (`list[obj]`): User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. When `null`, the `expr` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.match.expr.new](#fn-ruleruleexprnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `match` sub block.\n', args=[]),
      new(
        config=null,
        expr=null,
        versioned_expr=null
      ):: std.prune(a={
        config: config,
        expr: expr,
        versioned_expr: versioned_expr,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.new` constructs a new object with attributes and blocks configured for the `rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `action` (`string`): Action to take when match matches the request.\n  - `description` (`string`): An optional description of this rule. Max size is 64. When `null`, the `description` field will be omitted from the resulting object.\n  - `preview` (`bool`): When set to true, the action specified above is not enforced. Stackdriver logs for requests that trigger a preview action are annotated as such. When `null`, the `preview` field will be omitted from the resulting object.\n  - `priority` (`number`): An unique positive integer indicating the priority of evaluation for a rule. Rules are evaluated from highest priority (lowest numerically) to lowest priority (highest numerically) in order.\n  - `header_action` (`list[obj]`): Additional actions that are performed on headers. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.header_action.new](#fn-ruleheader_actionnew) constructor.\n  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding action is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.match.new](#fn-rulematchnew) constructor.\n  - `preconfigured_waf_config` (`list[obj]`): Preconfigured WAF configuration to be applied for the rule. If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect. When `null`, the `preconfigured_waf_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.preconfigured_waf_config.new](#fn-rulepreconfigured_waf_confignew) constructor.\n  - `rate_limit_options` (`list[obj]`): Rate limit threshold for this security policy. Must be specified if the action is &#34;rate_based_ban&#34; or &#34;throttle&#34;. Cannot be specified for any other actions. When `null`, the `rate_limit_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.rate_limit_options.new](#fn-rulerate_limit_optionsnew) constructor.\n  - `redirect_options` (`list[obj]`): Parameters defining the redirect action. Cannot be specified for any other actions. When `null`, the `redirect_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.redirect_options.new](#fn-ruleredirect_optionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rule` sub block.\n', args=[]),
    new(
      action,
      priority,
      description=null,
      header_action=null,
      match=null,
      preconfigured_waf_config=null,
      preview=null,
      rate_limit_options=null,
      redirect_options=null
    ):: std.prune(a={
      action: action,
      description: description,
      header_action: header_action,
      match: match,
      preconfigured_waf_config: preconfigured_waf_config,
      preview: preview,
      priority: priority,
      rate_limit_options: rate_limit_options,
      redirect_options: redirect_options,
    }),
    preconfigured_waf_config:: {
      exclusion:: {
        '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.preconfigured_waf_config.exclusion.new` constructs a new object with attributes and blocks configured for the `exclusion`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target_rule_ids` (`list`): A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set. When `null`, the `target_rule_ids` field will be omitted from the resulting object.\n  - `target_rule_set` (`string`): Target WAF rule set to apply the preconfigured WAF exclusion.\n  - `request_cookie` (`list[obj]`): Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation. When `null`, the `request_cookie` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.preconfigured_waf_config.exclusion.request_cookie.new](#fn-rulerulepreconfigured_waf_configrequest_cookienew) constructor.\n  - `request_header` (`list[obj]`): Request header whose value will be excluded from inspection during preconfigured WAF evaluation. When `null`, the `request_header` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.preconfigured_waf_config.exclusion.request_header.new](#fn-rulerulepreconfigured_waf_configrequest_headernew) constructor.\n  - `request_query_param` (`list[obj]`): Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.  Note that the parameter can be in the query string or in the POST body. When `null`, the `request_query_param` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.preconfigured_waf_config.exclusion.request_query_param.new](#fn-rulerulepreconfigured_waf_configrequest_query_paramnew) constructor.\n  - `request_uri` (`list[obj]`): Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded. When `null`, the `request_uri` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.preconfigured_waf_config.exclusion.request_uri.new](#fn-rulerulepreconfigured_waf_configrequest_urinew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `exclusion` sub block.\n', args=[]),
        new(
          target_rule_set,
          request_cookie=null,
          request_header=null,
          request_query_param=null,
          request_uri=null,
          target_rule_ids=null
        ):: std.prune(a={
          request_cookie: request_cookie,
          request_header: request_header,
          request_query_param: request_query_param,
          request_uri: request_uri,
          target_rule_ids: target_rule_ids,
          target_rule_set: target_rule_set,
        }),
        request_cookie:: {
          '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.preconfigured_waf_config.exclusion.request_cookie.new` constructs a new object with attributes and blocks configured for the `request_cookie`\nTerraform sub block.\n\n\n\n**Args**:\n  - `operator` (`string`): You can specify an exact match or a partial match by using a field operator and a field value. Available options: EQUALS: The operator matches if the field value equals the specified value. STARTS_WITH: The operator matches if the field value starts with the specified value. ENDS_WITH: The operator matches if the field value ends with the specified value. CONTAINS: The operator matches if the field value contains the specified value. EQUALS_ANY: The operator matches if the field value is any value.\n  - `value` (`string`): A request field matching the specified value will be excluded from inspection during preconfigured WAF evaluation. The field value must be given if the field operator is not EQUALS_ANY, and cannot be given if the field operator is EQUALS_ANY. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `request_cookie` sub block.\n', args=[]),
          new(
            operator,
            value=null
          ):: std.prune(a={
            operator: operator,
            value: value,
          }),
        },
        request_header:: {
          '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.preconfigured_waf_config.exclusion.request_header.new` constructs a new object with attributes and blocks configured for the `request_header`\nTerraform sub block.\n\n\n\n**Args**:\n  - `operator` (`string`): You can specify an exact match or a partial match by using a field operator and a field value. Available options: EQUALS: The operator matches if the field value equals the specified value. STARTS_WITH: The operator matches if the field value starts with the specified value. ENDS_WITH: The operator matches if the field value ends with the specified value. CONTAINS: The operator matches if the field value contains the specified value. EQUALS_ANY: The operator matches if the field value is any value.\n  - `value` (`string`): A request field matching the specified value will be excluded from inspection during preconfigured WAF evaluation. The field value must be given if the field operator is not EQUALS_ANY, and cannot be given if the field operator is EQUALS_ANY. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `request_header` sub block.\n', args=[]),
          new(
            operator,
            value=null
          ):: std.prune(a={
            operator: operator,
            value: value,
          }),
        },
        request_query_param:: {
          '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.preconfigured_waf_config.exclusion.request_query_param.new` constructs a new object with attributes and blocks configured for the `request_query_param`\nTerraform sub block.\n\n\n\n**Args**:\n  - `operator` (`string`): You can specify an exact match or a partial match by using a field operator and a field value. Available options: EQUALS: The operator matches if the field value equals the specified value. STARTS_WITH: The operator matches if the field value starts with the specified value. ENDS_WITH: The operator matches if the field value ends with the specified value. CONTAINS: The operator matches if the field value contains the specified value. EQUALS_ANY: The operator matches if the field value is any value.\n  - `value` (`string`): A request field matching the specified value will be excluded from inspection during preconfigured WAF evaluation. The field value must be given if the field operator is not EQUALS_ANY, and cannot be given if the field operator is EQUALS_ANY. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `request_query_param` sub block.\n', args=[]),
          new(
            operator,
            value=null
          ):: std.prune(a={
            operator: operator,
            value: value,
          }),
        },
        request_uri:: {
          '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.preconfigured_waf_config.exclusion.request_uri.new` constructs a new object with attributes and blocks configured for the `request_uri`\nTerraform sub block.\n\n\n\n**Args**:\n  - `operator` (`string`): You can specify an exact match or a partial match by using a field operator and a field value. Available options: EQUALS: The operator matches if the field value equals the specified value. STARTS_WITH: The operator matches if the field value starts with the specified value. ENDS_WITH: The operator matches if the field value ends with the specified value. CONTAINS: The operator matches if the field value contains the specified value. EQUALS_ANY: The operator matches if the field value is any value.\n  - `value` (`string`): A request field matching the specified value will be excluded from inspection during preconfigured WAF evaluation. The field value must be given if the field operator is not EQUALS_ANY, and cannot be given if the field operator is EQUALS_ANY. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `request_uri` sub block.\n', args=[]),
          new(
            operator,
            value=null
          ):: std.prune(a={
            operator: operator,
            value: value,
          }),
        },
      },
      '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.preconfigured_waf_config.new` constructs a new object with attributes and blocks configured for the `preconfigured_waf_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exclusion` (`list[obj]`): An exclusion to apply during preconfigured WAF evaluation. When `null`, the `exclusion` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.preconfigured_waf_config.exclusion.new](#fn-ruleruleexclusionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `preconfigured_waf_config` sub block.\n', args=[]),
      new(
        exclusion=null
      ):: std.prune(a={
        exclusion: exclusion,
      }),
    },
    rate_limit_options:: {
      ban_threshold:: {
        '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.rate_limit_options.ban_threshold.new` constructs a new object with attributes and blocks configured for the `ban_threshold`\nTerraform sub block.\n\n\n\n**Args**:\n  - `count` (`number`): Number of HTTP(S) requests for calculating the threshold.\n  - `interval_sec` (`number`): Interval over which the threshold is computed.\n\n**Returns**:\n  - An attribute object that represents the `ban_threshold` sub block.\n', args=[]),
        new(
          count,
          interval_sec
        ):: std.prune(a={
          count: count,
          interval_sec: interval_sec,
        }),
      },
      enforce_on_key_configs:: {
        '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.rate_limit_options.enforce_on_key_configs.new` constructs a new object with attributes and blocks configured for the `enforce_on_key_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enforce_on_key_name` (`string`): Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value. When `null`, the `enforce_on_key_name` field will be omitted from the resulting object.\n  - `enforce_on_key_type` (`string`): Determines the key to enforce the rate_limit_threshold on When `null`, the `enforce_on_key_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `enforce_on_key_configs` sub block.\n', args=[]),
        new(
          enforce_on_key_name=null,
          enforce_on_key_type=null
        ):: std.prune(a={
          enforce_on_key_name: enforce_on_key_name,
          enforce_on_key_type: enforce_on_key_type,
        }),
      },
      exceed_redirect_options:: {
        '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.rate_limit_options.exceed_redirect_options.new` constructs a new object with attributes and blocks configured for the `exceed_redirect_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target` (`string`): Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA. When `null`, the `target` field will be omitted from the resulting object.\n  - `type` (`string`): Type of the redirect action.\n\n**Returns**:\n  - An attribute object that represents the `exceed_redirect_options` sub block.\n', args=[]),
        new(
          type,
          target=null
        ):: std.prune(a={
          target: target,
          type: type,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.rate_limit_options.new` constructs a new object with attributes and blocks configured for the `rate_limit_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ban_duration_sec` (`number`): Can only be specified if the action for the rule is &#34;rate_based_ban&#34;. If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold. When `null`, the `ban_duration_sec` field will be omitted from the resulting object.\n  - `conform_action` (`string`): Action to take for requests that are under the configured rate limit threshold. Valid option is &#34;allow&#34; only.\n  - `enforce_on_key` (`string`): Determines the key to enforce the rateLimitThreshold on When `null`, the `enforce_on_key` field will be omitted from the resulting object.\n  - `enforce_on_key_name` (`string`): Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value. When `null`, the `enforce_on_key_name` field will be omitted from the resulting object.\n  - `exceed_action` (`string`): Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint. Valid options are &#34;deny()&#34; where valid values for status are 403, 404, 429, and 502, and &#34;redirect&#34; where the redirect parameters come from exceedRedirectOptions below.\n  - `ban_threshold` (`list[obj]`): Can only be specified if the action for the rule is &#34;rate_based_ban&#34;. If specified, the key will be banned for the configured &#39;banDurationSec&#39; when the number of requests that exceed the &#39;rateLimitThreshold&#39; also exceed this &#39;banThreshold&#39;. When `null`, the `ban_threshold` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.rate_limit_options.ban_threshold.new](#fn-ruleruleban_thresholdnew) constructor.\n  - `enforce_on_key_configs` (`list[obj]`): Enforce On Key Config of this security policy When `null`, the `enforce_on_key_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.rate_limit_options.enforce_on_key_configs.new](#fn-ruleruleenforce_on_key_configsnew) constructor.\n  - `exceed_redirect_options` (`list[obj]`): Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect. When `null`, the `exceed_redirect_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.rate_limit_options.exceed_redirect_options.new](#fn-ruleruleexceed_redirect_optionsnew) constructor.\n  - `rate_limit_threshold` (`list[obj]`): Threshold at which to begin ratelimiting. When `null`, the `rate_limit_threshold` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_security_policy.rule.rate_limit_options.rate_limit_threshold.new](#fn-rulerulerate_limit_thresholdnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rate_limit_options` sub block.\n', args=[]),
      new(
        conform_action,
        exceed_action,
        ban_duration_sec=null,
        ban_threshold=null,
        enforce_on_key=null,
        enforce_on_key_configs=null,
        enforce_on_key_name=null,
        exceed_redirect_options=null,
        rate_limit_threshold=null
      ):: std.prune(a={
        ban_duration_sec: ban_duration_sec,
        ban_threshold: ban_threshold,
        conform_action: conform_action,
        enforce_on_key: enforce_on_key,
        enforce_on_key_configs: enforce_on_key_configs,
        enforce_on_key_name: enforce_on_key_name,
        exceed_action: exceed_action,
        exceed_redirect_options: exceed_redirect_options,
        rate_limit_threshold: rate_limit_threshold,
      }),
      rate_limit_threshold:: {
        '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.rate_limit_options.rate_limit_threshold.new` constructs a new object with attributes and blocks configured for the `rate_limit_threshold`\nTerraform sub block.\n\n\n\n**Args**:\n  - `count` (`number`): Number of HTTP(S) requests for calculating the threshold.\n  - `interval_sec` (`number`): Interval over which the threshold is computed.\n\n**Returns**:\n  - An attribute object that represents the `rate_limit_threshold` sub block.\n', args=[]),
        new(
          count,
          interval_sec
        ):: std.prune(a={
          count: count,
          interval_sec: interval_sec,
        }),
      },
    },
    redirect_options:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.rule.redirect_options.new` constructs a new object with attributes and blocks configured for the `redirect_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target` (`string`): Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA. When `null`, the `target` field will be omitted from the resulting object.\n  - `type` (`string`): Type of the redirect action. Available options: EXTERNAL_302: Must specify the corresponding target field in config. GOOGLE_RECAPTCHA: Cannot specify target field in config.\n\n**Returns**:\n  - An attribute object that represents the `redirect_options` sub block.\n', args=[]),
      new(
        type,
        target=null
      ):: std.prune(a={
        target: target,
        type: type,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_security_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAdaptiveProtectionConfig':: d.fn(help='`google-beta.list[obj].withAdaptiveProtectionConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the adaptive_protection_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withAdaptiveProtectionConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `adaptive_protection_config` field.\n', args=[]),
  withAdaptiveProtectionConfig(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          adaptive_protection_config: value,
        },
      },
    },
  },
  '#withAdaptiveProtectionConfigMixin':: d.fn(help='`google-beta.list[obj].withAdaptiveProtectionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the adaptive_protection_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAdaptiveProtectionConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `adaptive_protection_config` field.\n', args=[]),
  withAdaptiveProtectionConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          adaptive_protection_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAdvancedOptionsConfig':: d.fn(help='`google-beta.list[obj].withAdvancedOptionsConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the advanced_options_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withAdvancedOptionsConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `advanced_options_config` field.\n', args=[]),
  withAdvancedOptionsConfig(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          advanced_options_config: value,
        },
      },
    },
  },
  '#withAdvancedOptionsConfigMixin':: d.fn(help='`google-beta.list[obj].withAdvancedOptionsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the advanced_options_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAdvancedOptionsConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `advanced_options_config` field.\n', args=[]),
  withAdvancedOptionsConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          advanced_options_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRecaptchaOptionsConfig':: d.fn(help='`google-beta.list[obj].withRecaptchaOptionsConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the recaptcha_options_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withRecaptchaOptionsConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `recaptcha_options_config` field.\n', args=[]),
  withRecaptchaOptionsConfig(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          recaptcha_options_config: value,
        },
      },
    },
  },
  '#withRecaptchaOptionsConfigMixin':: d.fn(help='`google-beta.list[obj].withRecaptchaOptionsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the recaptcha_options_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRecaptchaOptionsConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `recaptcha_options_config` field.\n', args=[]),
  withRecaptchaOptionsConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          recaptcha_options_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRule':: d.fn(help='`google-beta.list[obj].withRule` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rule field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withRuleMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rule` field.\n', args=[]),
  withRule(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          rule: value,
        },
      },
    },
  },
  '#withRuleMixin':: d.fn(help='`google-beta.list[obj].withRuleMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rule field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRule](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rule` field.\n', args=[]),
  withRuleMixin(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          rule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google-beta.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
