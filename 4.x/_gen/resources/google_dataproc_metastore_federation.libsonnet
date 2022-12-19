local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_dataproc_metastore_federation', url='', help='`google_dataproc_metastore_federation` represents the `google-beta_google_dataproc_metastore_federation` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  backend_metastores:: {
    '#new':: d.fn(help='\n`google-beta.google_dataproc_metastore_federation.backend_metastores.new` constructs a new object with attributes and blocks configured for the `backend_metastores`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metastore_type` (`string`): The type of the backend metastore. Possible values: [&#34;METASTORE_TYPE_UNSPECIFIED&#34;, &#34;DATAPROC_METASTORE&#34;, &#34;BIGQUERY&#34;]\n  - `name` (`string`): The relative resource name of the metastore that is being federated. The formats of the relative resource names for the currently supported metastores are listed below: Dataplex: projects/{projectId}/locations/{location}/lakes/{lake_id} BigQuery: projects/{projectId} Dataproc Metastore: projects/{projectId}/locations/{location}/services/{serviceId}\n  - `rank` (`string`): \n\n**Returns**:\n  - An attribute object that represents the `backend_metastores` sub block.\n', args=[]),
    new(
      metastore_type,
      name,
      rank
    ):: std.prune(a={
      metastore_type: metastore_type,
      name: name,
      rank: rank,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_dataproc_metastore_federation.new` injects a new `google-beta_google_dataproc_metastore_federation` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_dataproc_metastore_federation.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_dataproc_metastore_federation` using the reference:\n\n    $._ref.google-beta_google_dataproc_metastore_federation.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_dataproc_metastore_federation.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `federation_id` (`string`): The ID of the metastore federation. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),\nand hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between\n3 and 63 characters.\n  - `labels` (`obj`): User-defined labels for the metastore federation. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the metastore federation should reside. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `version` (`string`): The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.\n  - `backend_metastores` (`list[obj]`): A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number. When `null`, the `backend_metastores` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_metastore_federation.backend_metastores.new](#fn-googledataprocmetastorefederationbackendmetastoresnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_metastore_federation.timeouts.new](#fn-googledataprocmetastorefederationtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    federation_id,
    version,
    backend_metastores=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_metastore_federation',
    label=resourceLabel,
    attrs=self.newAttrs(
      backend_metastores=backend_metastores,
      federation_id=federation_id,
      labels=labels,
      location=location,
      project=project,
      timeouts=timeouts,
      version=version
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_dataproc_metastore_federation.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataproc_metastore_federation`\nTerraform resource.\n\nUnlike [google-beta.google_dataproc_metastore_federation.new](#fn-googledataprocmetastorefederationnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `federation_id` (`string`): The ID of the metastore federation. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),\nand hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between\n3 and 63 characters.\n  - `labels` (`obj`): User-defined labels for the metastore federation. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the metastore federation should reside. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `version` (`string`): The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.\n  - `backend_metastores` (`list[obj]`): A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number. When `null`, the `backend_metastores` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_metastore_federation.backend_metastores.new](#fn-googledataprocmetastorefederationbackendmetastoresnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_metastore_federation.timeouts.new](#fn-googledataprocmetastorefederationtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataproc_metastore_federation` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    federation_id,
    version,
    backend_metastores=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    backend_metastores: backend_metastores,
    federation_id: federation_id,
    labels: labels,
    location: location,
    project: project,
    timeouts: timeouts,
    version: version,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_dataproc_metastore_federation.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBackendMetastores':: d.fn(help='`google-beta.list[obj].withBackendMetastores` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the backend_metastores field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withBackendMetastoresMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `backend_metastores` field.\n', args=[]),
  withBackendMetastores(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          backend_metastores: value,
        },
      },
    },
  },
  '#withBackendMetastoresMixin':: d.fn(help='`google-beta.list[obj].withBackendMetastoresMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the backend_metastores field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withBackendMetastores](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `backend_metastores` field.\n', args=[]),
  withBackendMetastoresMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          backend_metastores+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withFederationId':: d.fn(help='`google-beta.string.withFederationId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the federation_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `federation_id` field.\n', args=[]),
  withFederationId(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          federation_id: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVersion':: d.fn(help='`google-beta.string.withVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `version` field.\n', args=[]),
  withVersion(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}
