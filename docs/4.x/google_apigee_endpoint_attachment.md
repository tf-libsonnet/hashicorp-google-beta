---
permalink: /google_apigee_endpoint_attachment/
---

# google_apigee_endpoint_attachment

`google_apigee_endpoint_attachment` represents the `google-beta_google_apigee_endpoint_attachment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withEndpointAttachmentId()`](#fn-withendpointattachmentid)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withOrgId()`](#fn-withorgid)
* [`fn withServiceAttachment()`](#fn-withserviceattachment)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_apigee_endpoint_attachment.new` injects a new `google-beta_google_apigee_endpoint_attachment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_apigee_endpoint_attachment.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_apigee_endpoint_attachment` using the reference:

    $._ref.google-beta_google_apigee_endpoint_attachment.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_apigee_endpoint_attachment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `endpoint_attachment_id` (`string`): ID of the endpoint attachment.
  - `location` (`string`): Location of the endpoint attachment.
  - `org_id` (`string`): The Apigee Organization associated with the Apigee instance,
in the format &#39;organizations/{{org_name}}&#39;.
  - `service_attachment` (`string`): Format: projects/*/regions/*/serviceAttachments/*
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_apigee_endpoint_attachment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_apigee_endpoint_attachment.newAttrs` constructs a new object with attributes and blocks configured for the `google_apigee_endpoint_attachment`
Terraform resource.

Unlike [google-beta.google_apigee_endpoint_attachment.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `endpoint_attachment_id` (`string`): ID of the endpoint attachment.
  - `location` (`string`): Location of the endpoint attachment.
  - `org_id` (`string`): The Apigee Organization associated with the Apigee instance,
in the format &#39;organizations/{{org_name}}&#39;.
  - `service_attachment` (`string`): Format: projects/*/regions/*/serviceAttachments/*
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_apigee_endpoint_attachment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_apigee_endpoint_attachment` resource into the root Terraform configuration.


### fn withEndpointAttachmentId

```ts
withEndpointAttachmentId()
```

`google-beta.string.withEndpointAttachmentId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the endpoint_attachment_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `endpoint_attachment_id` field.


### fn withLocation

```ts
withLocation()
```

`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withOrgId

```ts
withOrgId()
```

`google-beta.string.withOrgId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the org_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `org_id` field.


### fn withServiceAttachment

```ts
withServiceAttachment()
```

`google-beta.string.withServiceAttachment` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_attachment field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_attachment` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_apigee_endpoint_attachment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
