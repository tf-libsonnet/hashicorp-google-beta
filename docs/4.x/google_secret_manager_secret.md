---
permalink: /google_secret_manager_secret/
---

# google_secret_manager_secret

`google_secret_manager_secret` represents the `google-beta_google_secret_manager_secret` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withExpireTime()`](#fn-withexpiretime)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withProject()`](#fn-withproject)
* [`fn withReplication()`](#fn-withreplication)
* [`fn withReplicationMixin()`](#fn-withreplicationmixin)
* [`fn withRotation()`](#fn-withrotation)
* [`fn withRotationMixin()`](#fn-withrotationmixin)
* [`fn withSecretId()`](#fn-withsecretid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTopics()`](#fn-withtopics)
* [`fn withTopicsMixin()`](#fn-withtopicsmixin)
* [`fn withTtl()`](#fn-withttl)
* [`fn withVersionAliases()`](#fn-withversionaliases)
* [`obj replication`](#obj-replication)
  * [`fn new()`](#fn-replicationnew)
  * [`obj replication.auto`](#obj-replicationauto)
    * [`fn new()`](#fn-replicationautonew)
    * [`obj replication.auto.customer_managed_encryption`](#obj-replicationautocustomer_managed_encryption)
      * [`fn new()`](#fn-replicationautocustomer_managed_encryptionnew)
  * [`obj replication.user_managed`](#obj-replicationuser_managed)
    * [`fn new()`](#fn-replicationuser_managednew)
    * [`obj replication.user_managed.replicas`](#obj-replicationuser_managedreplicas)
      * [`fn new()`](#fn-replicationuser_managedreplicasnew)
      * [`obj replication.user_managed.replicas.customer_managed_encryption`](#obj-replicationuser_managedreplicascustomer_managed_encryption)
        * [`fn new()`](#fn-replicationuser_managedreplicascustomer_managed_encryptionnew)
* [`obj rotation`](#obj-rotation)
  * [`fn new()`](#fn-rotationnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj topics`](#obj-topics)
  * [`fn new()`](#fn-topicsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_secret_manager_secret.new` injects a new `google-beta_google_secret_manager_secret` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_secret_manager_secret.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_secret_manager_secret` using the reference:

    $._ref.google-beta_google_secret_manager_secret.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_secret_manager_secret.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Custom metadata about the secret.

Annotations are distinct from various forms of labels. Annotations exist to allow
client tools to store their own state information without requiring a database.

Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of
maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and
may have dashes (-), underscores (_), dots (.), and alphanumerics in between these
symbols.

The total size of annotation keys and values must be less than 16KiB.

An object containing a list of &#34;key&#34;: value pairs. Example:
{ &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `annotations` field will be omitted from the resulting object.
  - `expire_time` (`string`): Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits. Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `expire_time` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels assigned to this Secret.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}

Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}

No more than 64 labels can be assigned to a given resource.

An object containing a list of &#34;key&#34;: value pairs. Example:
{ &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `secret_id` (`string`): This must be unique within the project.
  - `ttl` (`string`): The TTL for the Secret.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `ttl` field will be omitted from the resulting object.
  - `version_aliases` (`obj`): Mapping from version alias to version name.

A version alias is a string with a maximum length of 63 characters and can contain
uppercase and lowercase letters, numerals, and the hyphen (-) and underscore (&#39;_&#39;)
characters. An alias string must start with a letter and cannot be the string
&#39;latest&#39; or &#39;NEW&#39;. No more than 50 aliases can be assigned to a given secret.

An object containing a list of &#34;key&#34;: value pairs. Example:
{ &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `version_aliases` field will be omitted from the resulting object.
  - `replication` (`list[obj]`): The replication policy of the secret data attached to the Secret. It cannot be changed
after the Secret has been created. When `null`, the `replication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_secret_manager_secret.replication.new](#fn-replicationnew) constructor.
  - `rotation` (`list[obj]`): The rotation time and period for a Secret. At &#39;next_rotation_time&#39;, Secret Manager will send a Pub/Sub notification to the topics configured on the Secret. &#39;topics&#39; must be set to configure rotation. When `null`, the `rotation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_secret_manager_secret.rotation.new](#fn-rotationnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_secret_manager_secret.timeouts.new](#fn-timeoutsnew) constructor.
  - `topics` (`list[obj]`): A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions. When `null`, the `topics` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_secret_manager_secret.topics.new](#fn-topicsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_secret_manager_secret.newAttrs` constructs a new object with attributes and blocks configured for the `google_secret_manager_secret`
Terraform resource.

Unlike [google-beta.google_secret_manager_secret.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Custom metadata about the secret.

Annotations are distinct from various forms of labels. Annotations exist to allow
client tools to store their own state information without requiring a database.

Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of
maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and
may have dashes (-), underscores (_), dots (.), and alphanumerics in between these
symbols.

The total size of annotation keys and values must be less than 16KiB.

An object containing a list of &#34;key&#34;: value pairs. Example:
{ &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `annotations` field will be omitted from the resulting object.
  - `expire_time` (`string`): Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits. Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `expire_time` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels assigned to this Secret.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}

Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}

No more than 64 labels can be assigned to a given resource.

An object containing a list of &#34;key&#34;: value pairs. Example:
{ &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `secret_id` (`string`): This must be unique within the project.
  - `ttl` (`string`): The TTL for the Secret.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `ttl` field will be omitted from the resulting object.
  - `version_aliases` (`obj`): Mapping from version alias to version name.

A version alias is a string with a maximum length of 63 characters and can contain
uppercase and lowercase letters, numerals, and the hyphen (-) and underscore (&#39;_&#39;)
characters. An alias string must start with a letter and cannot be the string
&#39;latest&#39; or &#39;NEW&#39;. No more than 50 aliases can be assigned to a given secret.

An object containing a list of &#34;key&#34;: value pairs. Example:
{ &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `version_aliases` field will be omitted from the resulting object.
  - `replication` (`list[obj]`): The replication policy of the secret data attached to the Secret. It cannot be changed
after the Secret has been created. When `null`, the `replication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_secret_manager_secret.replication.new](#fn-replicationnew) constructor.
  - `rotation` (`list[obj]`): The rotation time and period for a Secret. At &#39;next_rotation_time&#39;, Secret Manager will send a Pub/Sub notification to the topics configured on the Secret. &#39;topics&#39; must be set to configure rotation. When `null`, the `rotation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_secret_manager_secret.rotation.new](#fn-rotationnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_secret_manager_secret.timeouts.new](#fn-timeoutsnew) constructor.
  - `topics` (`list[obj]`): A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions. When `null`, the `topics` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_secret_manager_secret.topics.new](#fn-topicsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_secret_manager_secret` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google-beta.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withExpireTime

```ts
withExpireTime()
```

`google-beta.string.withExpireTime` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the expire_time field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `expire_time` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withReplication

```ts
withReplication()
```

`google-beta.list[obj].withReplication` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the replication field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withReplicationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `replication` field.


### fn withReplicationMixin

```ts
withReplicationMixin()
```

`google-beta.list[obj].withReplicationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the replication field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withReplication](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `replication` field.


### fn withRotation

```ts
withRotation()
```

`google-beta.list[obj].withRotation` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rotation field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withRotationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rotation` field.


### fn withRotationMixin

```ts
withRotationMixin()
```

`google-beta.list[obj].withRotationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rotation field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRotation](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rotation` field.


### fn withSecretId

```ts
withSecretId()
```

`google-beta.string.withSecretId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the secret_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `secret_id` field.


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


### fn withTopics

```ts
withTopics()
```

`google-beta.list[obj].withTopics` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the topics field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withTopicsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `topics` field.


### fn withTopicsMixin

```ts
withTopicsMixin()
```

`google-beta.list[obj].withTopicsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the topics field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withTopics](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `topics` field.


### fn withTtl

```ts
withTtl()
```

`google-beta.string.withTtl` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ttl field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ttl` field.


### fn withVersionAliases

```ts
withVersionAliases()
```

`google-beta.obj.withVersionAliases` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the version_aliases field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `version_aliases` field.


## obj replication



### fn replication.new

```ts
new()
```


`google-beta.google_secret_manager_secret.replication.new` constructs a new object with attributes and blocks configured for the `replication`
Terraform sub block.



**Args**:
  - `automatic` (`bool`): The Secret will automatically be replicated without any restrictions. When `null`, the `automatic` field will be omitted from the resulting object.
  - `auto` (`list[obj]`): The Secret will automatically be replicated without any restrictions. When `null`, the `auto` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_secret_manager_secret.replication.auto.new](#fn-replicationautonew) constructor.
  - `user_managed` (`list[obj]`): The Secret will be replicated to the regions specified by the user. When `null`, the `user_managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_secret_manager_secret.replication.user_managed.new](#fn-replicationuser_managednew) constructor.

**Returns**:
  - An attribute object that represents the `replication` sub block.


## obj replication.auto



### fn replication.auto.new

```ts
new()
```


`google-beta.google_secret_manager_secret.replication.auto.new` constructs a new object with attributes and blocks configured for the `auto`
Terraform sub block.



**Args**:
  - `customer_managed_encryption` (`list[obj]`): The customer-managed encryption configuration of the Secret.
If no configuration is provided, Google-managed default
encryption is used. When `null`, the `customer_managed_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_secret_manager_secret.replication.auto.customer_managed_encryption.new](#fn-replicationreplicationcustomer_managed_encryptionnew) constructor.

**Returns**:
  - An attribute object that represents the `auto` sub block.


## obj replication.auto.customer_managed_encryption



### fn replication.auto.customer_managed_encryption.new

```ts
new()
```


`google-beta.google_secret_manager_secret.replication.auto.customer_managed_encryption.new` constructs a new object with attributes and blocks configured for the `customer_managed_encryption`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.

**Returns**:
  - An attribute object that represents the `customer_managed_encryption` sub block.


## obj replication.user_managed



### fn replication.user_managed.new

```ts
new()
```


`google-beta.google_secret_manager_secret.replication.user_managed.new` constructs a new object with attributes and blocks configured for the `user_managed`
Terraform sub block.



**Args**:
  - `replicas` (`list[obj]`): The list of Replicas for this Secret. Cannot be empty. When `null`, the `replicas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_secret_manager_secret.replication.user_managed.replicas.new](#fn-replicationreplicationreplicasnew) constructor.

**Returns**:
  - An attribute object that represents the `user_managed` sub block.


## obj replication.user_managed.replicas



### fn replication.user_managed.replicas.new

```ts
new()
```


`google-beta.google_secret_manager_secret.replication.user_managed.replicas.new` constructs a new object with attributes and blocks configured for the `replicas`
Terraform sub block.



**Args**:
  - `location` (`string`): The canonical IDs of the location to replicate data. For example: &#34;us-east1&#34;.
  - `customer_managed_encryption` (`list[obj]`): Customer Managed Encryption for the secret. When `null`, the `customer_managed_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_secret_manager_secret.replication.user_managed.replicas.customer_managed_encryption.new](#fn-replicationreplicationuser_managedcustomer_managed_encryptionnew) constructor.

**Returns**:
  - An attribute object that represents the `replicas` sub block.


## obj replication.user_managed.replicas.customer_managed_encryption



### fn replication.user_managed.replicas.customer_managed_encryption.new

```ts
new()
```


`google-beta.google_secret_manager_secret.replication.user_managed.replicas.customer_managed_encryption.new` constructs a new object with attributes and blocks configured for the `customer_managed_encryption`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): Describes the Cloud KMS encryption key that will be used to protect destination secret.

**Returns**:
  - An attribute object that represents the `customer_managed_encryption` sub block.


## obj rotation



### fn rotation.new

```ts
new()
```


`google-beta.google_secret_manager_secret.rotation.new` constructs a new object with attributes and blocks configured for the `rotation`
Terraform sub block.



**Args**:
  - `next_rotation_time` (`string`): Timestamp in UTC at which the Secret is scheduled to rotate.
A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits. Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `next_rotation_time` field will be omitted from the resulting object.
  - `rotation_period` (`string`): The Duration between rotation notifications. Must be in seconds and at least 3600s (1h) and at most 3153600000s (100 years).
If rotationPeriod is set, &#39;next_rotation_time&#39; must be set. &#39;next_rotation_time&#39; will be advanced by this period when the service automatically sends rotation notifications. When `null`, the `rotation_period` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `rotation` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_secret_manager_secret.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj topics



### fn topics.new

```ts
new()
```


`google-beta.google_secret_manager_secret.topics.new` constructs a new object with attributes and blocks configured for the `topics`
Terraform sub block.



**Args**:
  - `name` (`string`): The resource name of the Pub/Sub topic that will be published to, in the following format: projects/*/topics/*.
For publication to succeed, the Secret Manager Service Agent service account must have pubsub.publisher permissions on the topic.

**Returns**:
  - An attribute object that represents the `topics` sub block.
