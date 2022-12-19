---
permalink: /google_dataproc_metastore_federation/
---

# google_dataproc_metastore_federation

`google_dataproc_metastore_federation` represents the `google-beta_google_dataproc_metastore_federation` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBackendMetastores()`](#fn-withbackendmetastores)
* [`fn withBackendMetastoresMixin()`](#fn-withbackendmetastoresmixin)
* [`fn withFederationId()`](#fn-withfederationid)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVersion()`](#fn-withversion)
* [`obj backend_metastores`](#obj-backend_metastores)
  * [`fn new()`](#fn-backend_metastoresnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_dataproc_metastore_federation.new` injects a new `google-beta_google_dataproc_metastore_federation` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_dataproc_metastore_federation.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_dataproc_metastore_federation` using the reference:

    $._ref.google-beta_google_dataproc_metastore_federation.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_dataproc_metastore_federation.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `federation_id` (`string`): The ID of the metastore federation. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
3 and 63 characters.
  - `labels` (`obj`): User-defined labels for the metastore federation. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the metastore federation should reside. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `version` (`string`): The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  - `backend_metastores` (`list[obj]`): A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number. When `null`, the `backend_metastores` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_metastore_federation.backend_metastores.new](#fn-googledataprocmetastorefederationbackendmetastoresnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_metastore_federation.timeouts.new](#fn-googledataprocmetastorefederationtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_dataproc_metastore_federation.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataproc_metastore_federation`
Terraform resource.

Unlike [google-beta.google_dataproc_metastore_federation.new](#fn-googledataprocmetastorefederationnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `federation_id` (`string`): The ID of the metastore federation. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
3 and 63 characters.
  - `labels` (`obj`): User-defined labels for the metastore federation. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the metastore federation should reside. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `version` (`string`): The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  - `backend_metastores` (`list[obj]`): A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number. When `null`, the `backend_metastores` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_metastore_federation.backend_metastores.new](#fn-googledataprocmetastorefederationbackendmetastoresnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_metastore_federation.timeouts.new](#fn-googledataprocmetastorefederationtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataproc_metastore_federation` resource into the root Terraform configuration.


### fn withBackendMetastores

```ts
withBackendMetastores()
```

`google-beta.list[obj].withBackendMetastores` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the backend_metastores field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withBackendMetastoresMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `backend_metastores` field.


### fn withBackendMetastoresMixin

```ts
withBackendMetastoresMixin()
```

`google-beta.list[obj].withBackendMetastoresMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the backend_metastores field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withBackendMetastores](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `backend_metastores` field.


### fn withFederationId

```ts
withFederationId()
```

`google-beta.string.withFederationId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the federation_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `federation_id` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withVersion

```ts
withVersion()
```

`google-beta.string.withVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `version` field.


## obj backend_metastores



### fn backend_metastores.new

```ts
new()
```


`google-beta.google_dataproc_metastore_federation.backend_metastores.new` constructs a new object with attributes and blocks configured for the `backend_metastores`
Terraform sub block.



**Args**:
  - `metastore_type` (`string`): The type of the backend metastore. Possible values: [&#34;METASTORE_TYPE_UNSPECIFIED&#34;, &#34;DATAPROC_METASTORE&#34;, &#34;BIGQUERY&#34;]
  - `name` (`string`): The relative resource name of the metastore that is being federated. The formats of the relative resource names for the currently supported metastores are listed below: Dataplex: projects/{projectId}/locations/{location}/lakes/{lake_id} BigQuery: projects/{projectId} Dataproc Metastore: projects/{projectId}/locations/{location}/services/{serviceId}
  - `rank` (`string`): 

**Returns**:
  - An attribute object that represents the `backend_metastores` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_dataproc_metastore_federation.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
