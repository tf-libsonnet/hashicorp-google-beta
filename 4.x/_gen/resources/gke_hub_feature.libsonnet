local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_gke_hub_feature', url='', help='`google_gke_hub_feature` represents the `google-beta_google_gke_hub_feature` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_gke_hub_feature.new` injects a new `google-beta_google_gke_hub_feature` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_gke_hub_feature.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_gke_hub_feature` using the reference:\n\n    $._ref.google-beta_google_gke_hub_feature.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_gke_hub_feature.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `labels` (`obj`): GCP labels for this Feature. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The full, unique name of this Feature resource When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `spec` (`list[obj]`): Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_feature.spec.new](#fn-specnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_feature.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    labels=null,
    name=null,
    project=null,
    spec=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_feature',
    label=resourceLabel,
    attrs=self.newAttrs(
      labels=labels,
      location=location,
      name=name,
      project=project,
      spec=spec,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_gke_hub_feature.newAttrs` constructs a new object with attributes and blocks configured for the `google_gke_hub_feature`\nTerraform resource.\n\nUnlike [google-beta.google_gke_hub_feature.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `labels` (`obj`): GCP labels for this Feature. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The full, unique name of this Feature resource When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `spec` (`list[obj]`): Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_feature.spec.new](#fn-specnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_feature.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_gke_hub_feature` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    labels=null,
    name=null,
    project=null,
    spec=null,
    timeouts=null
  ):: std.prune(a={
    labels: labels,
    location: location,
    name: name,
    project: project,
    spec: spec,
    timeouts: timeouts,
  }),
  spec:: {
    fleetobservability:: {
      logging_config:: {
        default_config:: {
          '#new':: d.fn(help='\n`google-beta.google_gke_hub_feature.spec.fleetobservability.logging_config.default_config.new` constructs a new object with attributes and blocks configured for the `default_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mode` (`string`): Specified if fleet logging feature is enabled. Possible values: [&#34;MODE_UNSPECIFIED&#34;, &#34;COPY&#34;, &#34;MOVE&#34;] When `null`, the `mode` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `default_config` sub block.\n', args=[]),
          new(
            mode=null
          ):: std.prune(a={
            mode: mode,
          }),
        },
        fleet_scope_logs_config:: {
          '#new':: d.fn(help='\n`google-beta.google_gke_hub_feature.spec.fleetobservability.logging_config.fleet_scope_logs_config.new` constructs a new object with attributes and blocks configured for the `fleet_scope_logs_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mode` (`string`): Specified if fleet logging feature is enabled. Possible values: [&#34;MODE_UNSPECIFIED&#34;, &#34;COPY&#34;, &#34;MOVE&#34;] When `null`, the `mode` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `fleet_scope_logs_config` sub block.\n', args=[]),
          new(
            mode=null
          ):: std.prune(a={
            mode: mode,
          }),
        },
        '#new':: d.fn(help='\n`google-beta.google_gke_hub_feature.spec.fleetobservability.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default_config` (`list[obj]`): Specified if applying the default routing config to logs not specified in other configs. When `null`, the `default_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_feature.spec.fleetobservability.logging_config.default_config.new](#fn-specspecfleetobservabilitydefault_confignew) constructor.\n  - `fleet_scope_logs_config` (`list[obj]`): Specified if applying the routing config to all logs for all fleet scopes. When `null`, the `fleet_scope_logs_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_feature.spec.fleetobservability.logging_config.fleet_scope_logs_config.new](#fn-specspecfleetobservabilityfleet_scope_logs_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
        new(
          default_config=null,
          fleet_scope_logs_config=null
        ):: std.prune(a={
          default_config: default_config,
          fleet_scope_logs_config: fleet_scope_logs_config,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_gke_hub_feature.spec.fleetobservability.new` constructs a new object with attributes and blocks configured for the `fleetobservability`\nTerraform sub block.\n\n\n\n**Args**:\n  - `logging_config` (`list[obj]`): Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_feature.spec.fleetobservability.logging_config.new](#fn-specspeclogging_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `fleetobservability` sub block.\n', args=[]),
      new(
        logging_config=null
      ):: std.prune(a={
        logging_config: logging_config,
      }),
    },
    multiclusteringress:: {
      '#new':: d.fn(help='\n`google-beta.google_gke_hub_feature.spec.multiclusteringress.new` constructs a new object with attributes and blocks configured for the `multiclusteringress`\nTerraform sub block.\n\n\n\n**Args**:\n  - `config_membership` (`string`): Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: &#39;projects/foo-proj/locations/global/memberships/bar&#39;\n\n**Returns**:\n  - An attribute object that represents the `multiclusteringress` sub block.\n', args=[]),
      new(
        config_membership
      ):: std.prune(a={
        config_membership: config_membership,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_gke_hub_feature.spec.new` constructs a new object with attributes and blocks configured for the `spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `fleetobservability` (`list[obj]`): Fleet Observability feature spec. When `null`, the `fleetobservability` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_feature.spec.fleetobservability.new](#fn-specfleetobservabilitynew) constructor.\n  - `multiclusteringress` (`list[obj]`): Multicluster Ingress-specific spec. When `null`, the `multiclusteringress` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_feature.spec.multiclusteringress.new](#fn-specmulticlusteringressnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `spec` sub block.\n', args=[]),
    new(
      fleetobservability=null,
      multiclusteringress=null
    ):: std.prune(a={
      fleetobservability: fleetobservability,
      multiclusteringress: multiclusteringress,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_gke_hub_feature.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSpec':: d.fn(help='`google-beta.list[obj].withSpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withSpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `spec` field.\n', args=[]),
  withSpec(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          spec: value,
        },
      },
    },
  },
  '#withSpecMixin':: d.fn(help='`google-beta.list[obj].withSpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `spec` field.\n', args=[]),
  withSpecMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
