---
permalink: /google_apigee_organization/
---

# google_apigee_organization

`google_apigee_organization` represents the `google-beta_google_apigee_organization` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnalyticsRegion()`](#fn-withanalyticsregion)
* [`fn withAuthorizedNetwork()`](#fn-withauthorizednetwork)
* [`fn withBillingType()`](#fn-withbillingtype)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisableVpcPeering()`](#fn-withdisablevpcpeering)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withProjectId()`](#fn-withprojectid)
* [`fn withProperties()`](#fn-withproperties)
* [`fn withPropertiesMixin()`](#fn-withpropertiesmixin)
* [`fn withRetention()`](#fn-withretention)
* [`fn withRuntimeDatabaseEncryptionKeyName()`](#fn-withruntimedatabaseencryptionkeyname)
* [`fn withRuntimeType()`](#fn-withruntimetype)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj properties`](#obj-properties)
  * [`fn new()`](#fn-propertiesnew)
  * [`obj properties.property`](#obj-propertiesproperty)
    * [`fn new()`](#fn-propertiespropertynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_apigee_organization.new` injects a new `google-beta_google_apigee_organization` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_apigee_organization.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_apigee_organization` using the reference:

    $._ref.google-beta_google_apigee_organization.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_apigee_organization.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `analytics_region` (`string`): Primary GCP region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org). When `null`, the `analytics_region` field will be omitted from the resulting object.
  - `authorized_network` (`string`): Compute Engine network used for Service Networking to be peered with Apigee runtime instances.
See [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started).
Valid only when &#39;RuntimeType&#39; is set to CLOUD. The value can be updated only when there are no runtime instances. For example: &#34;default&#34;. When `null`, the `authorized_network` field will be omitted from the resulting object.
  - `billing_type` (`string`): Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing). When `null`, the `billing_type` field will be omitted from the resulting object.
  - `description` (`string`): Description of the Apigee organization. When `null`, the `description` field will be omitted from the resulting object.
  - `disable_vpc_peering` (`bool`): Flag that specifies whether the VPC Peering through Private Google Access should be
disabled between the consumer network and Apigee. Required if an &#39;authorizedNetwork&#39;
on the consumer project is not provided, in which case the flag should be set to &#39;true&#39;.
Valid only when &#39;RuntimeType&#39; is set to CLOUD. The value must be set before the creation
of any Apigee runtime instance and can be updated only when there are no runtime instances. When `null`, the `disable_vpc_peering` field will be omitted from the resulting object.
  - `display_name` (`string`): The display name of the Apigee organization. When `null`, the `display_name` field will be omitted from the resulting object.
  - `project_id` (`string`): The project ID associated with the Apigee organization.
  - `retention` (`string`): Optional. This setting is applicable only for organizations that are soft-deleted (i.e., BillingType
is not EVALUATION). It controls how long Organization data will be retained after the initial delete
operation completes. During this period, the Organization may be restored to its last known state.
After this period, the Organization will no longer be able to be restored. Default value: &#34;DELETION_RETENTION_UNSPECIFIED&#34; Possible values: [&#34;DELETION_RETENTION_UNSPECIFIED&#34;, &#34;MINIMUM&#34;] When `null`, the `retention` field will be omitted from the resulting object.
  - `runtime_database_encryption_key_name` (`string`): Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances.
Update is not allowed after the organization is created.
If not specified, a Google-Managed encryption key will be used.
Valid only when &#39;RuntimeType&#39; is CLOUD. For example: &#39;projects/foo/locations/us/keyRings/bar/cryptoKeys/baz&#39;. When `null`, the `runtime_database_encryption_key_name` field will be omitted from the resulting object.
  - `runtime_type` (`string`): Runtime type of the Apigee organization based on the Apigee subscription purchased. Default value: &#34;CLOUD&#34; Possible values: [&#34;CLOUD&#34;, &#34;HYBRID&#34;] When `null`, the `runtime_type` field will be omitted from the resulting object.
  - `properties` (`list[obj]`): Properties defined in the Apigee organization profile. When `null`, the `properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_apigee_organization.properties.new](#fn-propertiesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_apigee_organization.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_apigee_organization.newAttrs` constructs a new object with attributes and blocks configured for the `google_apigee_organization`
Terraform resource.

Unlike [google-beta.google_apigee_organization.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `analytics_region` (`string`): Primary GCP region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org). When `null`, the `analytics_region` field will be omitted from the resulting object.
  - `authorized_network` (`string`): Compute Engine network used for Service Networking to be peered with Apigee runtime instances.
See [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started).
Valid only when &#39;RuntimeType&#39; is set to CLOUD. The value can be updated only when there are no runtime instances. For example: &#34;default&#34;. When `null`, the `authorized_network` field will be omitted from the resulting object.
  - `billing_type` (`string`): Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing). When `null`, the `billing_type` field will be omitted from the resulting object.
  - `description` (`string`): Description of the Apigee organization. When `null`, the `description` field will be omitted from the resulting object.
  - `disable_vpc_peering` (`bool`): Flag that specifies whether the VPC Peering through Private Google Access should be
disabled between the consumer network and Apigee. Required if an &#39;authorizedNetwork&#39;
on the consumer project is not provided, in which case the flag should be set to &#39;true&#39;.
Valid only when &#39;RuntimeType&#39; is set to CLOUD. The value must be set before the creation
of any Apigee runtime instance and can be updated only when there are no runtime instances. When `null`, the `disable_vpc_peering` field will be omitted from the resulting object.
  - `display_name` (`string`): The display name of the Apigee organization. When `null`, the `display_name` field will be omitted from the resulting object.
  - `project_id` (`string`): The project ID associated with the Apigee organization.
  - `retention` (`string`): Optional. This setting is applicable only for organizations that are soft-deleted (i.e., BillingType
is not EVALUATION). It controls how long Organization data will be retained after the initial delete
operation completes. During this period, the Organization may be restored to its last known state.
After this period, the Organization will no longer be able to be restored. Default value: &#34;DELETION_RETENTION_UNSPECIFIED&#34; Possible values: [&#34;DELETION_RETENTION_UNSPECIFIED&#34;, &#34;MINIMUM&#34;] When `null`, the `retention` field will be omitted from the resulting object.
  - `runtime_database_encryption_key_name` (`string`): Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances.
Update is not allowed after the organization is created.
If not specified, a Google-Managed encryption key will be used.
Valid only when &#39;RuntimeType&#39; is CLOUD. For example: &#39;projects/foo/locations/us/keyRings/bar/cryptoKeys/baz&#39;. When `null`, the `runtime_database_encryption_key_name` field will be omitted from the resulting object.
  - `runtime_type` (`string`): Runtime type of the Apigee organization based on the Apigee subscription purchased. Default value: &#34;CLOUD&#34; Possible values: [&#34;CLOUD&#34;, &#34;HYBRID&#34;] When `null`, the `runtime_type` field will be omitted from the resulting object.
  - `properties` (`list[obj]`): Properties defined in the Apigee organization profile. When `null`, the `properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_apigee_organization.properties.new](#fn-propertiesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_apigee_organization.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_apigee_organization` resource into the root Terraform configuration.


### fn withAnalyticsRegion

```ts
withAnalyticsRegion()
```

`google-beta.string.withAnalyticsRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the analytics_region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `analytics_region` field.


### fn withAuthorizedNetwork

```ts
withAuthorizedNetwork()
```

`google-beta.string.withAuthorizedNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the authorized_network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `authorized_network` field.


### fn withBillingType

```ts
withBillingType()
```

`google-beta.string.withBillingType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the billing_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `billing_type` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisableVpcPeering

```ts
withDisableVpcPeering()
```

`google-beta.bool.withDisableVpcPeering` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disable_vpc_peering field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disable_vpc_peering` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withProjectId

```ts
withProjectId()
```

`google-beta.string.withProjectId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_id` field.


### fn withProperties

```ts
withProperties()
```

`google-beta.list[obj].withProperties` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the properties field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withPropertiesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `properties` field.


### fn withPropertiesMixin

```ts
withPropertiesMixin()
```

`google-beta.list[obj].withPropertiesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the properties field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withProperties](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `properties` field.


### fn withRetention

```ts
withRetention()
```

`google-beta.string.withRetention` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the retention field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `retention` field.


### fn withRuntimeDatabaseEncryptionKeyName

```ts
withRuntimeDatabaseEncryptionKeyName()
```

`google-beta.string.withRuntimeDatabaseEncryptionKeyName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the runtime_database_encryption_key_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `runtime_database_encryption_key_name` field.


### fn withRuntimeType

```ts
withRuntimeType()
```

`google-beta.string.withRuntimeType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the runtime_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `runtime_type` field.


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


## obj properties



### fn properties.new

```ts
new()
```


`google-beta.google_apigee_organization.properties.new` constructs a new object with attributes and blocks configured for the `properties`
Terraform sub block.



**Args**:
  - `property` (`list[obj]`): List of all properties in the object. When `null`, the `property` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_apigee_organization.properties.property.new](#fn-propertiespropertynew) constructor.

**Returns**:
  - An attribute object that represents the `properties` sub block.


## obj properties.property



### fn properties.property.new

```ts
new()
```


`google-beta.google_apigee_organization.properties.property.new` constructs a new object with attributes and blocks configured for the `property`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the property. When `null`, the `name` field will be omitted from the resulting object.
  - `value` (`string`): Value of the property. When `null`, the `value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `property` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_apigee_organization.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
