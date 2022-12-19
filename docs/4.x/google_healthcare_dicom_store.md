---
permalink: /google_healthcare_dicom_store/
---

# google_healthcare_dicom_store

`google_healthcare_dicom_store` represents the `google-beta_google_healthcare_dicom_store` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDataset()`](#fn-withdataset)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withNotificationConfig()`](#fn-withnotificationconfig)
* [`fn withNotificationConfigMixin()`](#fn-withnotificationconfigmixin)
* [`fn withStreamConfigs()`](#fn-withstreamconfigs)
* [`fn withStreamConfigsMixin()`](#fn-withstreamconfigsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj notification_config`](#obj-notification_config)
  * [`fn new()`](#fn-notification_confignew)
* [`obj stream_configs`](#obj-stream_configs)
  * [`fn new()`](#fn-stream_configsnew)
  * [`obj stream_configs.bigquery_destination`](#obj-stream_configsbigquery_destination)
    * [`fn new()`](#fn-stream_configsbigquery_destinationnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_healthcare_dicom_store.new` injects a new `google-beta_google_healthcare_dicom_store` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_healthcare_dicom_store.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_healthcare_dicom_store` using the reference:

    $._ref.google-beta_google_healthcare_dicom_store.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_healthcare_dicom_store.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format
&#39;projects/{project}/locations/{location}/datasets/{dataset}&#39;
  - `labels` (`obj`): User-supplied key-value pairs used to organize DICOM stores.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}

Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}

No more than 64 labels can be associated with a given store.

An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The resource name for the DicomStore.

** Changing this property may recreate the Dicom store (removing all data) **
  - `notification_config` (`list[obj]`): A nested object resource When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.notification_config.new](#fn-notification_confignew) constructor.
  - `stream_configs` (`list[obj]`): To enable streaming to BigQuery, configure the streamConfigs object in your DICOM store.
streamConfigs is an array, so you can specify multiple BigQuery destinations. You can stream metadata from a single DICOM store to up to five BigQuery tables in a BigQuery dataset. When `null`, the `stream_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.stream_configs.new](#fn-stream_configsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_healthcare_dicom_store.newAttrs` constructs a new object with attributes and blocks configured for the `google_healthcare_dicom_store`
Terraform resource.

Unlike [google-beta.google_healthcare_dicom_store.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format
&#39;projects/{project}/locations/{location}/datasets/{dataset}&#39;
  - `labels` (`obj`): User-supplied key-value pairs used to organize DICOM stores.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}

Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}

No more than 64 labels can be associated with a given store.

An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The resource name for the DicomStore.

** Changing this property may recreate the Dicom store (removing all data) **
  - `notification_config` (`list[obj]`): A nested object resource When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.notification_config.new](#fn-notification_confignew) constructor.
  - `stream_configs` (`list[obj]`): To enable streaming to BigQuery, configure the streamConfigs object in your DICOM store.
streamConfigs is an array, so you can specify multiple BigQuery destinations. You can stream metadata from a single DICOM store to up to five BigQuery tables in a BigQuery dataset. When `null`, the `stream_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.stream_configs.new](#fn-stream_configsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_healthcare_dicom_store` resource into the root Terraform configuration.


### fn withDataset

```ts
withDataset()
```

`google-beta.string.withDataset` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dataset field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dataset` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google-beta.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNotificationConfig

```ts
withNotificationConfig()
```

`google-beta.list[obj].withNotificationConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notification_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withNotificationConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notification_config` field.


### fn withNotificationConfigMixin

```ts
withNotificationConfigMixin()
```

`google-beta.list[obj].withNotificationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notification_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withNotificationConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notification_config` field.


### fn withStreamConfigs

```ts
withStreamConfigs()
```

`google-beta.list[obj].withStreamConfigs` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the stream_configs field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withStreamConfigsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `stream_configs` field.


### fn withStreamConfigsMixin

```ts
withStreamConfigsMixin()
```

`google-beta.list[obj].withStreamConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the stream_configs field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withStreamConfigs](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `stream_configs` field.


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


## obj notification_config



### fn notification_config.new

```ts
new()
```


`google-beta.google_healthcare_dicom_store.notification_config.new` constructs a new object with attributes and blocks configured for the `notification_config`
Terraform sub block.



**Args**:
  - `pubsub_topic` (`string`): The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
PubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.
It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message
was published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a
project. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given
Cloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail.

**Returns**:
  - An attribute object that represents the `notification_config` sub block.


## obj stream_configs



### fn stream_configs.new

```ts
new()
```


`google-beta.google_healthcare_dicom_store.stream_configs.new` constructs a new object with attributes and blocks configured for the `stream_configs`
Terraform sub block.



**Args**:
  - `bigquery_destination` (`list[obj]`): BigQueryDestination to include a fully qualified BigQuery table URI where DICOM instance metadata will be streamed. When `null`, the `bigquery_destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.stream_configs.bigquery_destination.new](#fn-stream_configsbigquery_destinationnew) constructor.

**Returns**:
  - An attribute object that represents the `stream_configs` sub block.


## obj stream_configs.bigquery_destination



### fn stream_configs.bigquery_destination.new

```ts
new()
```


`google-beta.google_healthcare_dicom_store.stream_configs.bigquery_destination.new` constructs a new object with attributes and blocks configured for the `bigquery_destination`
Terraform sub block.



**Args**:
  - `table_uri` (`string`): a fully qualified BigQuery table URI where DICOM instance metadata will be streamed.

**Returns**:
  - An attribute object that represents the `bigquery_destination` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_healthcare_dicom_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
