local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_network_security_security_profile', url='', help='`google_network_security_security_profile` represents the `google-beta_google_network_security_security_profile` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_network_security_security_profile.new` injects a new `google-beta_google_network_security_security_profile` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_network_security_security_profile.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_network_security_security_profile` using the reference:\n\n    $._ref.google-beta_google_network_security_security_profile.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_network_security_security_profile.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of the security profile. The Max length is 512 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): A map of key/value label pairs to assign to the resource.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the security profile.\nThe default value is \u0026#39;global\u0026#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the security profile resource.\n  - `parent` (`string`): The name of the parent this security profile belongs to.\nFormat: organizations/{organization_id}. When `null`, the `parent` field will be omitted from the resulting object.\n  - `type` (`string`): The type of security profile. Possible values: [\u0026#34;THREAT_PREVENTION\u0026#34;]\n  - `threat_prevention_profile` (`list[obj]`): The threat prevention configuration for the security profile. When `null`, the `threat_prevention_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_security_profile.threat_prevention_profile.new](#fn-threat_prevention_profilenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_security_profile.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    type,
    description=null,
    labels=null,
    location=null,
    parent=null,
    threat_prevention_profile=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_security_security_profile',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      labels=labels,
      location=location,
      name=name,
      parent=parent,
      threat_prevention_profile=threat_prevention_profile,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_network_security_security_profile.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_security_security_profile`\nTerraform resource.\n\nUnlike [google-beta.google_network_security_security_profile.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of the security profile. The Max length is 512 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): A map of key/value label pairs to assign to the resource.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the security profile.\nThe default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the security profile resource.\n  - `parent` (`string`): The name of the parent this security profile belongs to.\nFormat: organizations/{organization_id}. When `null`, the `parent` field will be omitted from the resulting object.\n  - `type` (`string`): The type of security profile. Possible values: [&#34;THREAT_PREVENTION&#34;]\n  - `threat_prevention_profile` (`list[obj]`): The threat prevention configuration for the security profile. When `null`, the `threat_prevention_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_security_profile.threat_prevention_profile.new](#fn-threat_prevention_profilenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_security_profile.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_security_security_profile` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    type,
    description=null,
    labels=null,
    location=null,
    parent=null,
    threat_prevention_profile=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    labels: labels,
    location: location,
    name: name,
    parent: parent,
    threat_prevention_profile: threat_prevention_profile,
    timeouts: timeouts,
    type: type,
  }),
  threat_prevention_profile:: {
    '#new':: d.fn(help='\n`google-beta.google_network_security_security_profile.threat_prevention_profile.new` constructs a new object with attributes and blocks configured for the `threat_prevention_profile`\nTerraform sub block.\n\n\n\n**Args**:\n  - `severity_overrides` (`list[obj]`): The configuration for overriding threats actions by severity match. When `null`, the `severity_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_security_profile.threat_prevention_profile.severity_overrides.new](#fn-threat_prevention_profileseverity_overridesnew) constructor.\n  - `threat_overrides` (`list[obj]`): The configuration for overriding threats actions by threat id match.\nIf a threat is matched both by configuration provided in severity overrides\nand threat overrides, the threat overrides action is applied. When `null`, the `threat_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_security_profile.threat_prevention_profile.threat_overrides.new](#fn-threat_prevention_profilethreat_overridesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `threat_prevention_profile` sub block.\n', args=[]),
    new(
      severity_overrides=null,
      threat_overrides=null
    ):: std.prune(a={
      severity_overrides: severity_overrides,
      threat_overrides: threat_overrides,
    }),
    severity_overrides:: {
      '#new':: d.fn(help='\n`google-beta.google_network_security_security_profile.threat_prevention_profile.severity_overrides.new` constructs a new object with attributes and blocks configured for the `severity_overrides`\nTerraform sub block.\n\n\n\n**Args**:\n  - `action` (`string`): Threat action override. Possible values: [&#34;ALERT&#34;, &#34;ALLOW&#34;, &#34;DEFAULT_ACTION&#34;, &#34;DENY&#34;]\n  - `severity` (`string`): Severity level to match. Possible values: [&#34;CRITICAL&#34;, &#34;HIGH&#34;, &#34;INFORMATIONAL&#34;, &#34;LOW&#34;, &#34;MEDIUM&#34;]\n\n**Returns**:\n  - An attribute object that represents the `severity_overrides` sub block.\n', args=[]),
      new(
        action,
        severity
      ):: std.prune(a={
        action: action,
        severity: severity,
      }),
    },
    threat_overrides:: {
      '#new':: d.fn(help='\n`google-beta.google_network_security_security_profile.threat_prevention_profile.threat_overrides.new` constructs a new object with attributes and blocks configured for the `threat_overrides`\nTerraform sub block.\n\n\n\n**Args**:\n  - `action` (`string`): Threat action. Possible values: [&#34;ALERT&#34;, &#34;ALLOW&#34;, &#34;DEFAULT_ACTION&#34;, &#34;DENY&#34;]\n  - `threat_id` (`string`): Vendor-specific ID of a threat to override.\n\n**Returns**:\n  - An attribute object that represents the `threat_overrides` sub block.\n', args=[]),
      new(
        action,
        threat_id
      ):: std.prune(a={
        action: action,
        threat_id: threat_id,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_network_security_security_profile.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_network_security_security_profile+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_security_security_profile+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_network_security_security_profile+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_security_security_profile+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google-beta.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_network_security_security_profile+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withThreatPreventionProfile':: d.fn(help='`google-beta.list[obj].withThreatPreventionProfile` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the threat_prevention_profile field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withThreatPreventionProfileMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `threat_prevention_profile` field.\n', args=[]),
  withThreatPreventionProfile(resourceLabel, value): {
    resource+: {
      google_network_security_security_profile+: {
        [resourceLabel]+: {
          threat_prevention_profile: value,
        },
      },
    },
  },
  '#withThreatPreventionProfileMixin':: d.fn(help='`google-beta.list[obj].withThreatPreventionProfileMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the threat_prevention_profile field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withThreatPreventionProfile](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `threat_prevention_profile` field.\n', args=[]),
  withThreatPreventionProfileMixin(resourceLabel, value): {
    resource+: {
      google_network_security_security_profile+: {
        [resourceLabel]+: {
          threat_prevention_profile+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_security_security_profile+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_security_security_profile+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google-beta.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_network_security_security_profile+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
