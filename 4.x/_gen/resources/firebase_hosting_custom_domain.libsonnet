local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_firebase_hosting_custom_domain', url='', help='`google_firebase_hosting_custom_domain` represents the `google-beta_google_firebase_hosting_custom_domain` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_firebase_hosting_custom_domain.new` injects a new `google-beta_google_firebase_hosting_custom_domain` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_firebase_hosting_custom_domain.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_firebase_hosting_custom_domain` using the reference:\n\n    $._ref.google-beta_google_firebase_hosting_custom_domain.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_firebase_hosting_custom_domain.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cert_preference` (`string`): A field that lets you specify which SSL certificate type Hosting creates\nfor your domain name. Spark plan \u0026#39;CustomDomain\u0026#39;s only have access to the\n\u0026#39;GROUPED\u0026#39; cert type, while Blaze plan can select any option. Possible values: [\u0026#34;GROUPED\u0026#34;, \u0026#34;PROJECT_GROUPED\u0026#34;, \u0026#34;DEDICATED\u0026#34;] When `null`, the `cert_preference` field will be omitted from the resulting object.\n  - `custom_domain` (`string`): The ID of the \u0026#39;CustomDomain\u0026#39;, which is the domain name you\u0026#39;d like to use with Firebase Hosting.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `redirect_target` (`string`): A domain name that this CustomDomain should direct traffic towards. If\nspecified, Hosting will respond to requests against this CustomDomain\nwith an HTTP 301 code, and route traffic to the specified \u0026#39;redirect_target\u0026#39;\ninstead. When `null`, the `redirect_target` field will be omitted from the resulting object.\n  - `site_id` (`string`): The ID of the site in which to create this custom domain association.\n  - `wait_dns_verification` (`bool`): If true, Terraform will wait for DNS records to be fully resolved on the \u0026#39;CustomDomain\u0026#39;.\nIf false, Terraform will not wait for DNS records on the \u0026#39;CustomDomain\u0026#39;. Any issues in\nthe \u0026#39;CustomDomain\u0026#39; will be returned and stored in the Terraform state. When `null`, the `wait_dns_verification` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_custom_domain.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    custom_domain,
    site_id,
    cert_preference=null,
    project=null,
    redirect_target=null,
    timeouts=null,
    wait_dns_verification=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_hosting_custom_domain',
    label=resourceLabel,
    attrs=self.newAttrs(
      cert_preference=cert_preference,
      custom_domain=custom_domain,
      project=project,
      redirect_target=redirect_target,
      site_id=site_id,
      timeouts=timeouts,
      wait_dns_verification=wait_dns_verification
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_firebase_hosting_custom_domain.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_hosting_custom_domain`\nTerraform resource.\n\nUnlike [google-beta.google_firebase_hosting_custom_domain.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cert_preference` (`string`): A field that lets you specify which SSL certificate type Hosting creates\nfor your domain name. Spark plan &#39;CustomDomain&#39;s only have access to the\n&#39;GROUPED&#39; cert type, while Blaze plan can select any option. Possible values: [&#34;GROUPED&#34;, &#34;PROJECT_GROUPED&#34;, &#34;DEDICATED&#34;] When `null`, the `cert_preference` field will be omitted from the resulting object.\n  - `custom_domain` (`string`): The ID of the &#39;CustomDomain&#39;, which is the domain name you&#39;d like to use with Firebase Hosting.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `redirect_target` (`string`): A domain name that this CustomDomain should direct traffic towards. If\nspecified, Hosting will respond to requests against this CustomDomain\nwith an HTTP 301 code, and route traffic to the specified &#39;redirect_target&#39;\ninstead. When `null`, the `redirect_target` field will be omitted from the resulting object.\n  - `site_id` (`string`): The ID of the site in which to create this custom domain association.\n  - `wait_dns_verification` (`bool`): If true, Terraform will wait for DNS records to be fully resolved on the &#39;CustomDomain&#39;.\nIf false, Terraform will not wait for DNS records on the &#39;CustomDomain&#39;. Any issues in\nthe &#39;CustomDomain&#39; will be returned and stored in the Terraform state. When `null`, the `wait_dns_verification` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_custom_domain.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_firebase_hosting_custom_domain` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    custom_domain,
    site_id,
    cert_preference=null,
    project=null,
    redirect_target=null,
    timeouts=null,
    wait_dns_verification=null
  ):: std.prune(a={
    cert_preference: cert_preference,
    custom_domain: custom_domain,
    project: project,
    redirect_target: redirect_target,
    site_id: site_id,
    timeouts: timeouts,
    wait_dns_verification: wait_dns_verification,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_firebase_hosting_custom_domain.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCertPreference':: d.fn(help='`google-beta.string.withCertPreference` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cert_preference field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cert_preference` field.\n', args=[]),
  withCertPreference(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_custom_domain+: {
        [resourceLabel]+: {
          cert_preference: value,
        },
      },
    },
  },
  '#withCustomDomain':: d.fn(help='`google-beta.string.withCustomDomain` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the custom_domain field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `custom_domain` field.\n', args=[]),
  withCustomDomain(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_custom_domain+: {
        [resourceLabel]+: {
          custom_domain: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_custom_domain+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRedirectTarget':: d.fn(help='`google-beta.string.withRedirectTarget` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the redirect_target field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `redirect_target` field.\n', args=[]),
  withRedirectTarget(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_custom_domain+: {
        [resourceLabel]+: {
          redirect_target: value,
        },
      },
    },
  },
  '#withSiteId':: d.fn(help='`google-beta.string.withSiteId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the site_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `site_id` field.\n', args=[]),
  withSiteId(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_custom_domain+: {
        [resourceLabel]+: {
          site_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_custom_domain+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_custom_domain+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWaitDnsVerification':: d.fn(help='`google-beta.bool.withWaitDnsVerification` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the wait_dns_verification field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `wait_dns_verification` field.\n', args=[]),
  withWaitDnsVerification(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_custom_domain+: {
        [resourceLabel]+: {
          wait_dns_verification: value,
        },
      },
    },
  },
}
