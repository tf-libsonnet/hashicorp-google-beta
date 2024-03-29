local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_gke_hub_namespace', url='', help='`google_gke_hub_namespace` represents the `google-beta_google_gke_hub_namespace` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_gke_hub_namespace.new` injects a new `google-beta_google_gke_hub_namespace` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_gke_hub_namespace.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_gke_hub_namespace` using the reference:\n\n    $._ref.google-beta_google_gke_hub_namespace.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_gke_hub_namespace.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `labels` (`obj`): Labels for this Namespace. When `null`, the `labels` field will be omitted from the resulting object.\n  - `namespace_labels` (`obj`): Namespace-level cluster namespace labels. These labels are applied\nto the related namespace of the member clusters bound to the parent\nScope. Scope-level labels (\u0026#39;namespace_labels\u0026#39; in the Fleet Scope\nresource) take precedence over Namespace-level labels if they share\na key. Keys and values must be Kubernetes-conformant. When `null`, the `namespace_labels` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `scope` (`string`): The name of the Scope instance.\n  - `scope_id` (`string`): Id of the scope\n  - `scope_namespace_id` (`string`): The client-provided identifier of the namespace.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_namespace.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    scope,
    scope_id,
    scope_namespace_id,
    labels=null,
    namespace_labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_namespace',
    label=resourceLabel,
    attrs=self.newAttrs(
      labels=labels,
      namespace_labels=namespace_labels,
      project=project,
      scope=scope,
      scope_id=scope_id,
      scope_namespace_id=scope_namespace_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_gke_hub_namespace.newAttrs` constructs a new object with attributes and blocks configured for the `google_gke_hub_namespace`\nTerraform resource.\n\nUnlike [google-beta.google_gke_hub_namespace.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `labels` (`obj`): Labels for this Namespace. When `null`, the `labels` field will be omitted from the resulting object.\n  - `namespace_labels` (`obj`): Namespace-level cluster namespace labels. These labels are applied\nto the related namespace of the member clusters bound to the parent\nScope. Scope-level labels (&#39;namespace_labels&#39; in the Fleet Scope\nresource) take precedence over Namespace-level labels if they share\na key. Keys and values must be Kubernetes-conformant. When `null`, the `namespace_labels` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `scope` (`string`): The name of the Scope instance.\n  - `scope_id` (`string`): Id of the scope\n  - `scope_namespace_id` (`string`): The client-provided identifier of the namespace.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_namespace.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_gke_hub_namespace` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    scope,
    scope_id,
    scope_namespace_id,
    labels=null,
    namespace_labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    labels: labels,
    namespace_labels: namespace_labels,
    project: project,
    scope: scope,
    scope_id: scope_id,
    scope_namespace_id: scope_namespace_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_gke_hub_namespace.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withNamespaceLabels':: d.fn(help='`google-beta.obj.withNamespaceLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the namespace_labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `namespace_labels` field.\n', args=[]),
  withNamespaceLabels(resourceLabel, value): {
    resource+: {
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          namespace_labels: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withScope':: d.fn(help='`google-beta.string.withScope` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the scope field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `scope` field.\n', args=[]),
  withScope(resourceLabel, value): {
    resource+: {
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          scope: value,
        },
      },
    },
  },
  '#withScopeId':: d.fn(help='`google-beta.string.withScopeId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the scope_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `scope_id` field.\n', args=[]),
  withScopeId(resourceLabel, value): {
    resource+: {
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          scope_id: value,
        },
      },
    },
  },
  '#withScopeNamespaceId':: d.fn(help='`google-beta.string.withScopeNamespaceId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the scope_namespace_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `scope_namespace_id` field.\n', args=[]),
  withScopeNamespaceId(resourceLabel, value): {
    resource+: {
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          scope_namespace_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
