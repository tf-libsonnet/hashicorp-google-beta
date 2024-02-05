local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_network_security_server_tls_policy', url='', help='`google_network_security_server_tls_policy` represents the `google-beta_google_network_security_server_tls_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  mtls_policy:: {
    client_validation_ca:: {
      certificate_provider_instance:: {
        '#new':: d.fn(help='\n`google-beta.google_network_security_server_tls_policy.mtls_policy.client_validation_ca.certificate_provider_instance.new` constructs a new object with attributes and blocks configured for the `certificate_provider_instance`\nTerraform sub block.\n\n\n\n**Args**:\n  - `plugin_instance` (`string`): Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to &#34;google_cloud_private_spiffe&#34; to use Certificate Authority Service certificate provider instance.\n\n**Returns**:\n  - An attribute object that represents the `certificate_provider_instance` sub block.\n', args=[]),
        new(
          plugin_instance
        ):: std.prune(a={
          plugin_instance: plugin_instance,
        }),
      },
      grpc_endpoint:: {
        '#new':: d.fn(help='\n`google-beta.google_network_security_server_tls_policy.mtls_policy.client_validation_ca.grpc_endpoint.new` constructs a new object with attributes and blocks configured for the `grpc_endpoint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target_uri` (`string`): The target URI of the gRPC endpoint. Only UDS path is supported, and should start with &#34;unix:&#34;.\n\n**Returns**:\n  - An attribute object that represents the `grpc_endpoint` sub block.\n', args=[]),
        new(
          target_uri
        ):: std.prune(a={
          target_uri: target_uri,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_network_security_server_tls_policy.mtls_policy.client_validation_ca.new` constructs a new object with attributes and blocks configured for the `client_validation_ca`\nTerraform sub block.\n\n\n\n**Args**:\n  - `certificate_provider_instance` (`list[obj]`): Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty.\nDefines a mechanism to provision server identity (public and private keys). Cannot be combined with allowOpen as a permissive mode that allows both plain text and TLS is not supported. When `null`, the `certificate_provider_instance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.mtls_policy.client_validation_ca.certificate_provider_instance.new](#fn-mtls_policymtls_policycertificate_provider_instancenew) constructor.\n  - `grpc_endpoint` (`list[obj]`): gRPC specific configuration to access the gRPC server to obtain the cert and private key. When `null`, the `grpc_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.mtls_policy.client_validation_ca.grpc_endpoint.new](#fn-mtls_policymtls_policygrpc_endpointnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `client_validation_ca` sub block.\n', args=[]),
      new(
        certificate_provider_instance=null,
        grpc_endpoint=null
      ):: std.prune(a={
        certificate_provider_instance: certificate_provider_instance,
        grpc_endpoint: grpc_endpoint,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_network_security_server_tls_policy.mtls_policy.new` constructs a new object with attributes and blocks configured for the `mtls_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `client_validation_mode` (`string`): When the client presents an invalid certificate or no certificate to the load balancer, the clientValidationMode specifies how the client connection is handled.\nRequired if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty. Possible values: [&#34;CLIENT_VALIDATION_MODE_UNSPECIFIED&#34;, &#34;ALLOW_INVALID_OR_MISSING_CLIENT_CERT&#34;, &#34;REJECT_INVALID&#34;] When `null`, the `client_validation_mode` field will be omitted from the resulting object.\n  - `client_validation_trust_config` (`string`): Reference to the TrustConfig from certificatemanager.googleapis.com namespace.\nIf specified, the chain validation will be performed against certificates configured in the given TrustConfig.\nAllowed only if the policy is to be used with external HTTPS load balancers. When `null`, the `client_validation_trust_config` field will be omitted from the resulting object.\n  - `client_validation_ca` (`list[obj]`): Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty.\nDefines the mechanism to obtain the Certificate Authority certificate to validate the client certificate. When `null`, the `client_validation_ca` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.mtls_policy.client_validation_ca.new](#fn-mtls_policyclient_validation_canew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `mtls_policy` sub block.\n', args=[]),
    new(
      client_validation_ca=null,
      client_validation_mode=null,
      client_validation_trust_config=null
    ):: std.prune(a={
      client_validation_ca: client_validation_ca,
      client_validation_mode: client_validation_mode,
      client_validation_trust_config: client_validation_trust_config,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_network_security_server_tls_policy.new` injects a new `google-beta_google_network_security_server_tls_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_network_security_server_tls_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_network_security_server_tls_policy` using the reference:\n\n    $._ref.google-beta_google_network_security_server_tls_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_network_security_server_tls_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `allow_open` (`bool`): This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies.\nDetermines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility.\nConsider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80. When `null`, the `allow_open` field will be omitted from the resulting object.\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the ServerTlsPolicy resource.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the server tls policy.\nThe default value is \u0026#39;global\u0026#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the ServerTlsPolicy resource.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `mtls_policy` (`list[obj]`): This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director.\nDefines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections. When `null`, the `mtls_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.mtls_policy.new](#fn-mtls_policynew) constructor.\n  - `server_certificate` (`list[obj]`): Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS. When `null`, the `server_certificate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.server_certificate.new](#fn-server_certificatenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    allow_open=null,
    description=null,
    labels=null,
    location=null,
    mtls_policy=null,
    project=null,
    server_certificate=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_security_server_tls_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      allow_open=allow_open,
      description=description,
      labels=labels,
      location=location,
      mtls_policy=mtls_policy,
      name=name,
      project=project,
      server_certificate=server_certificate,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_network_security_server_tls_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_security_server_tls_policy`\nTerraform resource.\n\nUnlike [google-beta.google_network_security_server_tls_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `allow_open` (`bool`): This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies.\nDetermines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility.\nConsider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80. When `null`, the `allow_open` field will be omitted from the resulting object.\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the ServerTlsPolicy resource.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the server tls policy.\nThe default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the ServerTlsPolicy resource.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `mtls_policy` (`list[obj]`): This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director.\nDefines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections. When `null`, the `mtls_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.mtls_policy.new](#fn-mtls_policynew) constructor.\n  - `server_certificate` (`list[obj]`): Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS. When `null`, the `server_certificate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.server_certificate.new](#fn-server_certificatenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_security_server_tls_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    allow_open=null,
    description=null,
    labels=null,
    location=null,
    mtls_policy=null,
    project=null,
    server_certificate=null,
    timeouts=null
  ):: std.prune(a={
    allow_open: allow_open,
    description: description,
    labels: labels,
    location: location,
    mtls_policy: mtls_policy,
    name: name,
    project: project,
    server_certificate: server_certificate,
    timeouts: timeouts,
  }),
  server_certificate:: {
    certificate_provider_instance:: {
      '#new':: d.fn(help='\n`google-beta.google_network_security_server_tls_policy.server_certificate.certificate_provider_instance.new` constructs a new object with attributes and blocks configured for the `certificate_provider_instance`\nTerraform sub block.\n\n\n\n**Args**:\n  - `plugin_instance` (`string`): Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to &#34;google_cloud_private_spiffe&#34; to use Certificate Authority Service certificate provider instance.\n\n**Returns**:\n  - An attribute object that represents the `certificate_provider_instance` sub block.\n', args=[]),
      new(
        plugin_instance
      ):: std.prune(a={
        plugin_instance: plugin_instance,
      }),
    },
    grpc_endpoint:: {
      '#new':: d.fn(help='\n`google-beta.google_network_security_server_tls_policy.server_certificate.grpc_endpoint.new` constructs a new object with attributes and blocks configured for the `grpc_endpoint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target_uri` (`string`): The target URI of the gRPC endpoint. Only UDS path is supported, and should start with &#34;unix:&#34;.\n\n**Returns**:\n  - An attribute object that represents the `grpc_endpoint` sub block.\n', args=[]),
      new(
        target_uri
      ):: std.prune(a={
        target_uri: target_uri,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_network_security_server_tls_policy.server_certificate.new` constructs a new object with attributes and blocks configured for the `server_certificate`\nTerraform sub block.\n\n\n\n**Args**:\n  - `certificate_provider_instance` (`list[obj]`): Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty.\nDefines a mechanism to provision server identity (public and private keys). Cannot be combined with allowOpen as a permissive mode that allows both plain text and TLS is not supported. When `null`, the `certificate_provider_instance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.server_certificate.certificate_provider_instance.new](#fn-server_certificatecertificate_provider_instancenew) constructor.\n  - `grpc_endpoint` (`list[obj]`): gRPC specific configuration to access the gRPC server to obtain the cert and private key. When `null`, the `grpc_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.server_certificate.grpc_endpoint.new](#fn-server_certificategrpc_endpointnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `server_certificate` sub block.\n', args=[]),
    new(
      certificate_provider_instance=null,
      grpc_endpoint=null
    ):: std.prune(a={
      certificate_provider_instance: certificate_provider_instance,
      grpc_endpoint: grpc_endpoint,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_network_security_server_tls_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAllowOpen':: d.fn(help='`google-beta.bool.withAllowOpen` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the allow_open field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `allow_open` field.\n', args=[]),
  withAllowOpen(resourceLabel, value): {
    resource+: {
      google_network_security_server_tls_policy+: {
        [resourceLabel]+: {
          allow_open: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_network_security_server_tls_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_security_server_tls_policy+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_network_security_server_tls_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMtlsPolicy':: d.fn(help='`google-beta.list[obj].withMtlsPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the mtls_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withMtlsPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `mtls_policy` field.\n', args=[]),
  withMtlsPolicy(resourceLabel, value): {
    resource+: {
      google_network_security_server_tls_policy+: {
        [resourceLabel]+: {
          mtls_policy: value,
        },
      },
    },
  },
  '#withMtlsPolicyMixin':: d.fn(help='`google-beta.list[obj].withMtlsPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the mtls_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withMtlsPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `mtls_policy` field.\n', args=[]),
  withMtlsPolicyMixin(resourceLabel, value): {
    resource+: {
      google_network_security_server_tls_policy+: {
        [resourceLabel]+: {
          mtls_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_security_server_tls_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_security_server_tls_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withServerCertificate':: d.fn(help='`google-beta.list[obj].withServerCertificate` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the server_certificate field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withServerCertificateMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `server_certificate` field.\n', args=[]),
  withServerCertificate(resourceLabel, value): {
    resource+: {
      google_network_security_server_tls_policy+: {
        [resourceLabel]+: {
          server_certificate: value,
        },
      },
    },
  },
  '#withServerCertificateMixin':: d.fn(help='`google-beta.list[obj].withServerCertificateMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the server_certificate field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withServerCertificate](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `server_certificate` field.\n', args=[]),
  withServerCertificateMixin(resourceLabel, value): {
    resource+: {
      google_network_security_server_tls_policy+: {
        [resourceLabel]+: {
          server_certificate+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_security_server_tls_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_security_server_tls_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
