---
permalink: /google_identity_platform_tenant_default_supported_idp_config/
---

# google_identity_platform_tenant_default_supported_idp_config

`google_identity_platform_tenant_default_supported_idp_config` represents the `google-beta_google_identity_platform_tenant_default_supported_idp_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withClientId()`](#fn-withclientid)
* [`fn withClientSecret()`](#fn-withclientsecret)
* [`fn withEnabled()`](#fn-withenabled)
* [`fn withIdpId()`](#fn-withidpid)
* [`fn withProject()`](#fn-withproject)
* [`fn withTenant()`](#fn-withtenant)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_identity_platform_tenant_default_supported_idp_config.new` injects a new `google-beta_google_identity_platform_tenant_default_supported_idp_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_identity_platform_tenant_default_supported_idp_config.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_identity_platform_tenant_default_supported_idp_config` using the reference:

    $._ref.google-beta_google_identity_platform_tenant_default_supported_idp_config.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_identity_platform_tenant_default_supported_idp_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `client_id` (`string`): OAuth client ID
  - `client_secret` (`string`): OAuth client secret
  - `enabled` (`bool`): If this IDP allows the user to sign in When `null`, the `enabled` field will be omitted from the resulting object.
  - `idp_id` (`string`): ID of the IDP. Possible values include:

* &#39;apple.com&#39;

* &#39;facebook.com&#39;

* &#39;gc.apple.com&#39;

* &#39;github.com&#39;

* &#39;google.com&#39;

* &#39;linkedin.com&#39;

* &#39;microsoft.com&#39;

* &#39;playgames.google.com&#39;

* &#39;twitter.com&#39;

* &#39;yahoo.com&#39;
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `tenant` (`string`): The name of the tenant where this DefaultSupportedIdpConfig resource exists
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_identity_platform_tenant_default_supported_idp_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_identity_platform_tenant_default_supported_idp_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_identity_platform_tenant_default_supported_idp_config`
Terraform resource.

Unlike [google-beta.google_identity_platform_tenant_default_supported_idp_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `client_id` (`string`): OAuth client ID
  - `client_secret` (`string`): OAuth client secret
  - `enabled` (`bool`): If this IDP allows the user to sign in When `null`, the `enabled` field will be omitted from the resulting object.
  - `idp_id` (`string`): ID of the IDP. Possible values include:

* &#39;apple.com&#39;

* &#39;facebook.com&#39;

* &#39;gc.apple.com&#39;

* &#39;github.com&#39;

* &#39;google.com&#39;

* &#39;linkedin.com&#39;

* &#39;microsoft.com&#39;

* &#39;playgames.google.com&#39;

* &#39;twitter.com&#39;

* &#39;yahoo.com&#39;
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `tenant` (`string`): The name of the tenant where this DefaultSupportedIdpConfig resource exists
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_identity_platform_tenant_default_supported_idp_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_identity_platform_tenant_default_supported_idp_config` resource into the root Terraform configuration.


### fn withClientId

```ts
withClientId()
```

`google-beta.string.withClientId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the client_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `client_id` field.


### fn withClientSecret

```ts
withClientSecret()
```

`google-beta.string.withClientSecret` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the client_secret field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `client_secret` field.


### fn withEnabled

```ts
withEnabled()
```

`google-beta.bool.withEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enabled` field.


### fn withIdpId

```ts
withIdpId()
```

`google-beta.string.withIdpId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the idp_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `idp_id` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTenant

```ts
withTenant()
```

`google-beta.string.withTenant` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the tenant field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `tenant` field.


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


`google-beta.google_identity_platform_tenant_default_supported_idp_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
