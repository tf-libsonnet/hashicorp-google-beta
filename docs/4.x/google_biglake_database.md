---
permalink: /google_biglake_database/
---

# google_biglake_database

`google_biglake_database` represents the `google-beta_google_biglake_database` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCatalog()`](#fn-withcatalog)
* [`fn withHiveOptions()`](#fn-withhiveoptions)
* [`fn withHiveOptionsMixin()`](#fn-withhiveoptionsmixin)
* [`fn withName()`](#fn-withname)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj hive_options`](#obj-hive_options)
  * [`fn new()`](#fn-hive_optionsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_biglake_database.new` injects a new `google-beta_google_biglake_database` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_biglake_database.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_biglake_database` using the reference:

    $._ref.google-beta_google_biglake_database.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_biglake_database.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `catalog` (`string`): The parent catalog.
  - `name` (`string`): The name of the database.
  - `type` (`string`): The database type.
  - `hive_options` (`list[obj]`): Options of a Hive database. When `null`, the `hive_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_biglake_database.hive_options.new](#fn-hive_optionsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_biglake_database.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_biglake_database.newAttrs` constructs a new object with attributes and blocks configured for the `google_biglake_database`
Terraform resource.

Unlike [google-beta.google_biglake_database.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `catalog` (`string`): The parent catalog.
  - `name` (`string`): The name of the database.
  - `type` (`string`): The database type.
  - `hive_options` (`list[obj]`): Options of a Hive database. When `null`, the `hive_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_biglake_database.hive_options.new](#fn-hive_optionsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_biglake_database.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_biglake_database` resource into the root Terraform configuration.


### fn withCatalog

```ts
withCatalog()
```

`google-beta.string.withCatalog` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the catalog field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `catalog` field.


### fn withHiveOptions

```ts
withHiveOptions()
```

`google-beta.list[obj].withHiveOptions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the hive_options field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withHiveOptionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `hive_options` field.


### fn withHiveOptionsMixin

```ts
withHiveOptionsMixin()
```

`google-beta.list[obj].withHiveOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the hive_options field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withHiveOptions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `hive_options` field.


### fn withName

```ts
withName()
```

`google-beta.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


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


### fn withType

```ts
withType()
```

`google-beta.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


## obj hive_options



### fn hive_options.new

```ts
new()
```


`google-beta.google_biglake_database.hive_options.new` constructs a new object with attributes and blocks configured for the `hive_options`
Terraform sub block.



**Args**:
  - `location_uri` (`string`): Cloud Storage folder URI where the database data is stored, starting with &#34;gs://&#34;. When `null`, the `location_uri` field will be omitted from the resulting object.
  - `parameters` (`obj`): Stores user supplied Hive database parameters. An object containing a
list of&#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `parameters` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `hive_options` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_biglake_database.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
