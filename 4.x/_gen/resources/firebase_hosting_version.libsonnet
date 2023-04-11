local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_firebase_hosting_version', url='', help='`google_firebase_hosting_version` represents the `google-beta_google_firebase_hosting_version` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  config:: {
    '#new':: d.fn(help='\n`google-beta.google_firebase_hosting_version.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `redirects` (`list[obj]`): An array of objects (called redirect rules), where each rule specifies a URL pattern that, if matched to the request URL path,\ntriggers Hosting to respond with a redirect to the specified destination path. When `null`, the `redirects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.config.redirects.new](#fn-configredirectsnew) constructor.\n  - `rewrites` (`list[obj]`): An array of objects (called rewrite rules), where each rule specifies a URL pattern that, if matched to the\nrequest URL path, triggers Hosting to respond as if the service were given the specified destination URL. When `null`, the `rewrites` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.config.rewrites.new](#fn-configrewritesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
    new(
      redirects=null,
      rewrites=null
    ):: std.prune(a={
      redirects: redirects,
      rewrites: rewrites,
    }),
    redirects:: {
      '#new':: d.fn(help='\n`google-beta.google_firebase_hosting_version.config.redirects.new` constructs a new object with attributes and blocks configured for the `redirects`\nTerraform sub block.\n\n\n\n**Args**:\n  - `glob` (`string`): The user-supplied glob to match against the request URL path. When `null`, the `glob` field will be omitted from the resulting object.\n  - `location` (`string`): The value to put in the HTTP location header of the response.\nThe location can contain capture group values from the pattern using a : prefix to identify\nthe segment and an optional * to capture the rest of the URL. For example:\n\n&#39;&#39;&#39;hcl\nredirects {\n  glob = &#34;/:capture*&#34;\n  status_code = 302\n  location = &#34;https://example.com/foo/:capture&#34;\n}\n&#39;&#39;&#39;\n  - `regex` (`string`): The user-supplied RE2 regular expression to match against the request URL path. When `null`, the `regex` field will be omitted from the resulting object.\n  - `status_code` (`number`): The status HTTP code to return in the response. It must be a valid 3xx status code.\n\n**Returns**:\n  - An attribute object that represents the `redirects` sub block.\n', args=[]),
      new(
        location,
        status_code,
        glob=null,
        regex=null
      ):: std.prune(a={
        glob: glob,
        location: location,
        regex: regex,
        status_code: status_code,
      }),
    },
    rewrites:: {
      '#new':: d.fn(help='\n`google-beta.google_firebase_hosting_version.config.rewrites.new` constructs a new object with attributes and blocks configured for the `rewrites`\nTerraform sub block.\n\n\n\n**Args**:\n  - `function_` (`string`): The function to proxy requests to. Must match the exported function name exactly. When `null`, the `function_` field will be omitted from the resulting object.\n  - `glob` (`string`): The user-supplied glob to match against the request URL path. When `null`, the `glob` field will be omitted from the resulting object.\n  - `regex` (`string`): The user-supplied RE2 regular expression to match against the request URL path. When `null`, the `regex` field will be omitted from the resulting object.\n  - `run` (`list[obj]`): The request will be forwarded to Cloud Run. When `null`, the `run` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.config.rewrites.run.new](#fn-configconfigrunnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rewrites` sub block.\n', args=[]),
      new(
        function_=null,
        glob=null,
        regex=null,
        run=null
      ):: std.prune(a={
        'function': function_,
        glob: glob,
        regex: regex,
        run: run,
      }),
      run:: {
        '#new':: d.fn(help='\n`google-beta.google_firebase_hosting_version.config.rewrites.run.new` constructs a new object with attributes and blocks configured for the `run`\nTerraform sub block.\n\n\n\n**Args**:\n  - `region` (`string`): Optional. User-provided region where the Cloud Run service is hosted. Defaults to &#39;us-central1&#39; if not supplied. When `null`, the `region` field will be omitted from the resulting object.\n  - `service_id` (`string`): User-defined ID of the Cloud Run service.\n\n**Returns**:\n  - An attribute object that represents the `run` sub block.\n', args=[]),
        new(
          service_id,
          region=null
        ):: std.prune(a={
          region: region,
          service_id: service_id,
        }),
      },
    },
  },
  '#new':: d.fn(help="\n`google-beta.google_firebase_hosting_version.new` injects a new `google-beta_google_firebase_hosting_version` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_firebase_hosting_version.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_firebase_hosting_version` using the reference:\n\n    $._ref.google-beta_google_firebase_hosting_version.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_firebase_hosting_version.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `site_id` (`string`): Required. The ID of the site in which to create this Version.\n  - `config` (`list[obj]`): The configuration for the behavior of the site. This configuration exists in the \u0026#39;firebase.json\u0026#39; file. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.config.new](#fn-confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    site_id,
    config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_hosting_version',
    label=resourceLabel,
    attrs=self.newAttrs(config=config, site_id=site_id, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_firebase_hosting_version.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_hosting_version`\nTerraform resource.\n\nUnlike [google-beta.google_firebase_hosting_version.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `site_id` (`string`): Required. The ID of the site in which to create this Version.\n  - `config` (`list[obj]`): The configuration for the behavior of the site. This configuration exists in the &#39;firebase.json&#39; file. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.config.new](#fn-confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_firebase_hosting_version` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    site_id,
    config=null,
    timeouts=null
  ):: std.prune(a={
    config: config,
    site_id: site_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_firebase_hosting_version.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withConfig':: d.fn(help='`google-beta.list[obj].withConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `config` field.\n', args=[]),
  withConfig(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_version+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  '#withConfigMixin':: d.fn(help='`google-beta.list[obj].withConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `config` field.\n', args=[]),
  withConfigMixin(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_version+: {
        [resourceLabel]+: {
          config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSiteId':: d.fn(help='`google-beta.string.withSiteId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the site_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `site_id` field.\n', args=[]),
  withSiteId(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_version+: {
        [resourceLabel]+: {
          site_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_version+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_firebase_hosting_version+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
