local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_vertex_ai_feature_online_store', url='', help='`google_vertex_ai_feature_online_store` represents the `google-beta_google_vertex_ai_feature_online_store` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  bigtable:: {
    auto_scaling:: {
      '#new':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store.bigtable.auto_scaling.new` constructs a new object with attributes and blocks configured for the `auto_scaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu_utilization_target` (`number`): A percentage of the cluster&#39;s CPU capacity. Can be from 10% to 80%. When a cluster&#39;s CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set will default to 50%. When `null`, the `cpu_utilization_target` field will be omitted from the resulting object.\n  - `max_node_count` (`number`): The maximum number of nodes to scale up to. Must be greater than or equal to minNodeCount, and less than or equal to 10 times of &#39;minNodeCount&#39;.\n  - `min_node_count` (`number`): The minimum number of nodes to scale down to. Must be greater than or equal to 1.\n\n**Returns**:\n  - An attribute object that represents the `auto_scaling` sub block.\n', args=[]),
      new(
        max_node_count,
        min_node_count,
        cpu_utilization_target=null
      ):: std.prune(a={
        cpu_utilization_target: cpu_utilization_target,
        max_node_count: max_node_count,
        min_node_count: min_node_count,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store.bigtable.new` constructs a new object with attributes and blocks configured for the `bigtable`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auto_scaling` (`list[obj]`): Autoscaling config applied to Bigtable Instance. When `null`, the `auto_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.bigtable.auto_scaling.new](#fn-bigtableauto_scalingnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `bigtable` sub block.\n', args=[]),
    new(
      auto_scaling=null
    ):: std.prune(a={
      auto_scaling: auto_scaling,
    }),
  },
  dedicated_serving_endpoint:: {
    '#new':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store.dedicated_serving_endpoint.new` constructs a new object with attributes and blocks configured for the `dedicated_serving_endpoint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `private_service_connect_config` (`list[obj]`): Private service connect config. When `null`, the `private_service_connect_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.dedicated_serving_endpoint.private_service_connect_config.new](#fn-dedicated_serving_endpointprivate_service_connect_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `dedicated_serving_endpoint` sub block.\n', args=[]),
    new(
      private_service_connect_config=null
    ):: std.prune(a={
      private_service_connect_config: private_service_connect_config,
    }),
    private_service_connect_config:: {
      '#new':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store.dedicated_serving_endpoint.private_service_connect_config.new` constructs a new object with attributes and blocks configured for the `private_service_connect_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_private_service_connect` (`bool`): If set to true, customers will use private service connection to send request. Otherwise, the connection will set to public endpoint.\n  - `project_allowlist` (`list`): A list of Projects from which the forwarding rule will target the service attachment. When `null`, the `project_allowlist` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `private_service_connect_config` sub block.\n', args=[]),
      new(
        enable_private_service_connect,
        project_allowlist=null
      ):: std.prune(a={
        enable_private_service_connect: enable_private_service_connect,
        project_allowlist: project_allowlist,
      }),
    },
  },
  embedding_management:: {
    '#new':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store.embedding_management.new` constructs a new object with attributes and blocks configured for the `embedding_management`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Enable embedding management. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `embedding_management` sub block.\n', args=[]),
    new(
      enabled=null
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_vertex_ai_feature_online_store.new` injects a new `google-beta_google_vertex_ai_feature_online_store` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_vertex_ai_feature_online_store.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_vertex_ai_feature_online_store` using the reference:\n\n    $._ref.google-beta_google_vertex_ai_feature_online_store.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_vertex_ai_feature_online_store.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `force_destroy` (`bool`): If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted. When `null`, the `force_destroy` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your feature online stores.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of feature online store. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `bigtable` (`list[obj]`): Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. When `null`, the `bigtable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.bigtable.new](#fn-bigtablenew) constructor.\n  - `dedicated_serving_endpoint` (`list[obj]`): The dedicated serving endpoint for this FeatureOnlineStore, which is different from common vertex service endpoint. Only need to set when you choose Optimized storage type or enable EmbeddingManagement. Will use public endpoint by default. When `null`, the `dedicated_serving_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.dedicated_serving_endpoint.new](#fn-dedicated_serving_endpointnew) constructor.\n  - `embedding_management` (`list[obj]`): The settings for embedding management in FeatureOnlineStore. Embedding management can only be used with BigTable. When `null`, the `embedding_management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.embedding_management.new](#fn-embedding_managementnew) constructor.\n  - `optimized` (`list[obj]`): Settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore When `null`, the `optimized` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.optimized.new](#fn-optimizednew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    bigtable=null,
    dedicated_serving_endpoint=null,
    embedding_management=null,
    force_destroy=null,
    labels=null,
    optimized=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_feature_online_store',
    label=resourceLabel,
    attrs=self.newAttrs(
      bigtable=bigtable,
      dedicated_serving_endpoint=dedicated_serving_endpoint,
      embedding_management=embedding_management,
      force_destroy=force_destroy,
      labels=labels,
      name=name,
      optimized=optimized,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store.newAttrs` constructs a new object with attributes and blocks configured for the `google_vertex_ai_feature_online_store`\nTerraform resource.\n\nUnlike [google-beta.google_vertex_ai_feature_online_store.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `force_destroy` (`bool`): If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted. When `null`, the `force_destroy` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your feature online stores.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of feature online store. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `bigtable` (`list[obj]`): Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. When `null`, the `bigtable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.bigtable.new](#fn-bigtablenew) constructor.\n  - `dedicated_serving_endpoint` (`list[obj]`): The dedicated serving endpoint for this FeatureOnlineStore, which is different from common vertex service endpoint. Only need to set when you choose Optimized storage type or enable EmbeddingManagement. Will use public endpoint by default. When `null`, the `dedicated_serving_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.dedicated_serving_endpoint.new](#fn-dedicated_serving_endpointnew) constructor.\n  - `embedding_management` (`list[obj]`): The settings for embedding management in FeatureOnlineStore. Embedding management can only be used with BigTable. When `null`, the `embedding_management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.embedding_management.new](#fn-embedding_managementnew) constructor.\n  - `optimized` (`list[obj]`): Settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore When `null`, the `optimized` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.optimized.new](#fn-optimizednew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_vertex_ai_feature_online_store` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    bigtable=null,
    dedicated_serving_endpoint=null,
    embedding_management=null,
    force_destroy=null,
    labels=null,
    optimized=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    bigtable: bigtable,
    dedicated_serving_endpoint: dedicated_serving_endpoint,
    embedding_management: embedding_management,
    force_destroy: force_destroy,
    labels: labels,
    name: name,
    optimized: optimized,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  optimized:: {
    '#new':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store.optimized.new` constructs a new object with attributes and blocks configured for the `optimized`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `optimized` sub block.\n', args=[]),
    new(

    ):: std.prune(a={}),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBigtable':: d.fn(help='`google-beta.list[obj].withBigtable` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bigtable field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withBigtableMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bigtable` field.\n', args=[]),
  withBigtable(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          bigtable: value,
        },
      },
    },
  },
  '#withBigtableMixin':: d.fn(help='`google-beta.list[obj].withBigtableMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bigtable field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withBigtable](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bigtable` field.\n', args=[]),
  withBigtableMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          bigtable+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDedicatedServingEndpoint':: d.fn(help='`google-beta.list[obj].withDedicatedServingEndpoint` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dedicated_serving_endpoint field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withDedicatedServingEndpointMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dedicated_serving_endpoint` field.\n', args=[]),
  withDedicatedServingEndpoint(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          dedicated_serving_endpoint: value,
        },
      },
    },
  },
  '#withDedicatedServingEndpointMixin':: d.fn(help='`google-beta.list[obj].withDedicatedServingEndpointMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dedicated_serving_endpoint field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withDedicatedServingEndpoint](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dedicated_serving_endpoint` field.\n', args=[]),
  withDedicatedServingEndpointMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          dedicated_serving_endpoint+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEmbeddingManagement':: d.fn(help='`google-beta.list[obj].withEmbeddingManagement` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the embedding_management field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withEmbeddingManagementMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `embedding_management` field.\n', args=[]),
  withEmbeddingManagement(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          embedding_management: value,
        },
      },
    },
  },
  '#withEmbeddingManagementMixin':: d.fn(help='`google-beta.list[obj].withEmbeddingManagementMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the embedding_management field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withEmbeddingManagement](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `embedding_management` field.\n', args=[]),
  withEmbeddingManagementMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          embedding_management+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withForceDestroy':: d.fn(help='`google-beta.bool.withForceDestroy` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the force_destroy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `force_destroy` field.\n', args=[]),
  withForceDestroy(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          force_destroy: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withOptimized':: d.fn(help='`google-beta.list[obj].withOptimized` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the optimized field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withOptimizedMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `optimized` field.\n', args=[]),
  withOptimized(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          optimized: value,
        },
      },
    },
  },
  '#withOptimizedMixin':: d.fn(help='`google-beta.list[obj].withOptimizedMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the optimized field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withOptimized](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `optimized` field.\n', args=[]),
  withOptimizedMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          optimized+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
