local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_network_security_client_tls_policy', url='', help='`google_network_security_client_tls_policy` represents the `google-beta_google_network_security_client_tls_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  client_certificate:: {
    certificate_provider_instance:: {
      '#new':: d.fn(help='\n`google-beta.google_network_security_client_tls_policy.client_certificate.certificate_provider_instance.new` constructs a new object with attributes and blocks configured for the `certificate_provider_instance`\nTerraform sub block.\n\n\n\n**Args**:\n  - `plugin_instance` (`string`): Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to &#34;google_cloud_private_spiffe&#34; to use Certificate Authority Service certificate provider instance.\n\n**Returns**:\n  - An attribute object that represents the `certificate_provider_instance` sub block.\n', args=[]),
      new(
        plugin_instance
      ):: std.prune(a={
        plugin_instance: plugin_instance,
      }),
    },
    grpc_endpoint:: {
      '#new':: d.fn(help='\n`google-beta.google_network_security_client_tls_policy.client_certificate.grpc_endpoint.new` constructs a new object with attributes and blocks configured for the `grpc_endpoint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target_uri` (`string`): The target URI of the gRPC endpoint. Only UDS path is supported, and should start with &#34;unix:&#34;.\n\n**Returns**:\n  - An attribute object that represents the `grpc_endpoint` sub block.\n', args=[]),
      new(
        target_uri
      ):: std.prune(a={
        target_uri: target_uri,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_network_security_client_tls_policy.client_certificate.new` constructs a new object with attributes and blocks configured for the `client_certificate`\nTerraform sub block.\n\n\n\n**Args**:\n  - `certificate_provider_instance` (`list[obj]`): The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information. When `null`, the `certificate_provider_instance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.client_certificate.certificate_provider_instance.new](#fn-client_certificatecertificate_provider_instancenew) constructor.\n  - `grpc_endpoint` (`list[obj]`): gRPC specific configuration to access the gRPC server to obtain the cert and private key. When `null`, the `grpc_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.client_certificate.grpc_endpoint.new](#fn-client_certificategrpc_endpointnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `client_certificate` sub block.\n', args=[]),
    new(
      certificate_provider_instance=null,
      grpc_endpoint=null
    ):: std.prune(a={
      certificate_provider_instance: certificate_provider_instance,
      grpc_endpoint: grpc_endpoint,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_network_security_client_tls_policy.new` injects a new `google-beta_google_network_security_client_tls_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_network_security_client_tls_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_network_security_client_tls_policy` using the reference:\n\n    $._ref.google-beta_google_network_security_client_tls_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_network_security_client_tls_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the ClientTlsPolicy resource.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the client tls policy.\nThe default value is \u0026#39;global\u0026#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the ClientTlsPolicy resource.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `sni` (`string`): Server Name Indication string to present to the server during TLS handshake. E.g: \u0026#34;secure.example.com\u0026#34;. When `null`, the `sni` field will be omitted from the resulting object.\n  - `client_certificate` (`list[obj]`): Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS. When `null`, the `client_certificate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.client_certificate.new](#fn-client_certificatenew) constructor.\n  - `server_validation_ca` (`list[obj]`): Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate. When `null`, the `server_validation_ca` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.server_validation_ca.new](#fn-server_validation_canew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    client_certificate=null,
    description=null,
    labels=null,
    location=null,
    project=null,
    server_validation_ca=null,
    sni=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_security_client_tls_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      client_certificate=client_certificate,
      description=description,
      labels=labels,
      location=location,
      name=name,
      project=project,
      server_validation_ca=server_validation_ca,
      sni=sni,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_network_security_client_tls_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_security_client_tls_policy`\nTerraform resource.\n\nUnlike [google-beta.google_network_security_client_tls_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the ClientTlsPolicy resource.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the client tls policy.\nThe default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the ClientTlsPolicy resource.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `sni` (`string`): Server Name Indication string to present to the server during TLS handshake. E.g: &#34;secure.example.com&#34;. When `null`, the `sni` field will be omitted from the resulting object.\n  - `client_certificate` (`list[obj]`): Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS. When `null`, the `client_certificate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.client_certificate.new](#fn-client_certificatenew) constructor.\n  - `server_validation_ca` (`list[obj]`): Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate. When `null`, the `server_validation_ca` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.server_validation_ca.new](#fn-server_validation_canew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_security_client_tls_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    client_certificate=null,
    description=null,
    labels=null,
    location=null,
    project=null,
    server_validation_ca=null,
    sni=null,
    timeouts=null
  ):: std.prune(a={
    client_certificate: client_certificate,
    description: description,
    labels: labels,
    location: location,
    name: name,
    project: project,
    server_validation_ca: server_validation_ca,
    sni: sni,
    timeouts: timeouts,
  }),
  server_validation_ca:: {
    certificate_provider_instance:: {
      '#new':: d.fn(help='\n`google-beta.google_network_security_client_tls_policy.server_validation_ca.certificate_provider_instance.new` constructs a new object with attributes and blocks configured for the `certificate_provider_instance`\nTerraform sub block.\n\n\n\n**Args**:\n  - `plugin_instance` (`string`): Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to &#34;google_cloud_private_spiffe&#34; to use Certificate Authority Service certificate provider instance.\n\n**Returns**:\n  - An attribute object that represents the `certificate_provider_instance` sub block.\n', args=[]),
      new(
        plugin_instance
      ):: std.prune(a={
        plugin_instance: plugin_instance,
      }),
    },
    grpc_endpoint:: {
      '#new':: d.fn(help='\n`google-beta.google_network_security_client_tls_policy.server_validation_ca.grpc_endpoint.new` constructs a new object with attributes and blocks configured for the `grpc_endpoint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target_uri` (`string`): The target URI of the gRPC endpoint. Only UDS path is supported, and should start with &#34;unix:&#34;.\n\n**Returns**:\n  - An attribute object that represents the `grpc_endpoint` sub block.\n', args=[]),
      new(
        target_uri
      ):: std.prune(a={
        target_uri: target_uri,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_network_security_client_tls_policy.server_validation_ca.new` constructs a new object with attributes and blocks configured for the `server_validation_ca`\nTerraform sub block.\n\n\n\n**Args**:\n  - `certificate_provider_instance` (`list[obj]`): The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information. When `null`, the `certificate_provider_instance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.server_validation_ca.certificate_provider_instance.new](#fn-server_validation_cacertificate_provider_instancenew) constructor.\n  - `grpc_endpoint` (`list[obj]`): gRPC specific configuration to access the gRPC server to obtain the cert and private key. When `null`, the `grpc_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.server_validation_ca.grpc_endpoint.new](#fn-server_validation_cagrpc_endpointnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `server_validation_ca` sub block.\n', args=[]),
    new(
      certificate_provider_instance=null,
      grpc_endpoint=null
    ):: std.prune(a={
      certificate_provider_instance: certificate_provider_instance,
      grpc_endpoint: grpc_endpoint,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_network_security_client_tls_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withClientCertificate':: d.fn(help='`google-beta.list[obj].withClientCertificate` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the client_certificate field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withClientCertificateMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `client_certificate` field.\n', args=[]),
  withClientCertificate(resourceLabel, value): {
    resource+: {
      google_network_security_client_tls_policy+: {
        [resourceLabel]+: {
          client_certificate: value,
        },
      },
    },
  },
  '#withClientCertificateMixin':: d.fn(help='`google-beta.list[obj].withClientCertificateMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the client_certificate field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withClientCertificate](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `client_certificate` field.\n', args=[]),
  withClientCertificateMixin(resourceLabel, value): {
    resource+: {
      google_network_security_client_tls_policy+: {
        [resourceLabel]+: {
          client_certificate+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_network_security_client_tls_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_security_client_tls_policy+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_network_security_client_tls_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_security_client_tls_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_security_client_tls_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withServerValidationCa':: d.fn(help='`google-beta.list[obj].withServerValidationCa` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the server_validation_ca field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withServerValidationCaMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `server_validation_ca` field.\n', args=[]),
  withServerValidationCa(resourceLabel, value): {
    resource+: {
      google_network_security_client_tls_policy+: {
        [resourceLabel]+: {
          server_validation_ca: value,
        },
      },
    },
  },
  '#withServerValidationCaMixin':: d.fn(help='`google-beta.list[obj].withServerValidationCaMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the server_validation_ca field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withServerValidationCa](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `server_validation_ca` field.\n', args=[]),
  withServerValidationCaMixin(resourceLabel, value): {
    resource+: {
      google_network_security_client_tls_policy+: {
        [resourceLabel]+: {
          server_validation_ca+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSni':: d.fn(help='`google-beta.string.withSni` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the sni field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `sni` field.\n', args=[]),
  withSni(resourceLabel, value): {
    resource+: {
      google_network_security_client_tls_policy+: {
        [resourceLabel]+: {
          sni: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_security_client_tls_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_security_client_tls_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
