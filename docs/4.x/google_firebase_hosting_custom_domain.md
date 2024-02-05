---
permalink: /google_firebase_hosting_custom_domain/
---

# google_firebase_hosting_custom_domain

`google_firebase_hosting_custom_domain` represents the `google-beta_google_firebase_hosting_custom_domain` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCertPreference()`](#fn-withcertpreference)
* [`fn withCustomDomain()`](#fn-withcustomdomain)
* [`fn withProject()`](#fn-withproject)
* [`fn withRedirectTarget()`](#fn-withredirecttarget)
* [`fn withSiteId()`](#fn-withsiteid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWaitDnsVerification()`](#fn-withwaitdnsverification)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_firebase_hosting_custom_domain.new` injects a new `google-beta_google_firebase_hosting_custom_domain` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_firebase_hosting_custom_domain.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_firebase_hosting_custom_domain` using the reference:

    $._ref.google-beta_google_firebase_hosting_custom_domain.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_firebase_hosting_custom_domain.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cert_preference` (`string`): A field that lets you specify which SSL certificate type Hosting creates
for your domain name. Spark plan &#39;CustomDomain&#39;s only have access to the
&#39;GROUPED&#39; cert type, while Blaze plan can select any option. Possible values: [&#34;GROUPED&#34;, &#34;PROJECT_GROUPED&#34;, &#34;DEDICATED&#34;] When `null`, the `cert_preference` field will be omitted from the resulting object.
  - `custom_domain` (`string`): The ID of the &#39;CustomDomain&#39;, which is the domain name you&#39;d like to use with Firebase Hosting.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `redirect_target` (`string`): A domain name that this CustomDomain should direct traffic towards. If
specified, Hosting will respond to requests against this CustomDomain
with an HTTP 301 code, and route traffic to the specified &#39;redirect_target&#39;
instead. When `null`, the `redirect_target` field will be omitted from the resulting object.
  - `site_id` (`string`): The ID of the site in which to create this custom domain association.
  - `wait_dns_verification` (`bool`): If true, Terraform will wait for DNS records to be fully resolved on the &#39;CustomDomain&#39;.
If false, Terraform will not wait for DNS records on the &#39;CustomDomain&#39;. Any issues in
the &#39;CustomDomain&#39; will be returned and stored in the Terraform state. When `null`, the `wait_dns_verification` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_custom_domain.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_firebase_hosting_custom_domain.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_hosting_custom_domain`
Terraform resource.

Unlike [google-beta.google_firebase_hosting_custom_domain.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cert_preference` (`string`): A field that lets you specify which SSL certificate type Hosting creates
for your domain name. Spark plan &#39;CustomDomain&#39;s only have access to the
&#39;GROUPED&#39; cert type, while Blaze plan can select any option. Possible values: [&#34;GROUPED&#34;, &#34;PROJECT_GROUPED&#34;, &#34;DEDICATED&#34;] When `null`, the `cert_preference` field will be omitted from the resulting object.
  - `custom_domain` (`string`): The ID of the &#39;CustomDomain&#39;, which is the domain name you&#39;d like to use with Firebase Hosting.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `redirect_target` (`string`): A domain name that this CustomDomain should direct traffic towards. If
specified, Hosting will respond to requests against this CustomDomain
with an HTTP 301 code, and route traffic to the specified &#39;redirect_target&#39;
instead. When `null`, the `redirect_target` field will be omitted from the resulting object.
  - `site_id` (`string`): The ID of the site in which to create this custom domain association.
  - `wait_dns_verification` (`bool`): If true, Terraform will wait for DNS records to be fully resolved on the &#39;CustomDomain&#39;.
If false, Terraform will not wait for DNS records on the &#39;CustomDomain&#39;. Any issues in
the &#39;CustomDomain&#39; will be returned and stored in the Terraform state. When `null`, the `wait_dns_verification` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_custom_domain.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_firebase_hosting_custom_domain` resource into the root Terraform configuration.


### fn withCertPreference

```ts
withCertPreference()
```

`google-beta.string.withCertPreference` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cert_preference field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cert_preference` field.


### fn withCustomDomain

```ts
withCustomDomain()
```

`google-beta.string.withCustomDomain` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the custom_domain field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `custom_domain` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRedirectTarget

```ts
withRedirectTarget()
```

`google-beta.string.withRedirectTarget` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the redirect_target field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `redirect_target` field.


### fn withSiteId

```ts
withSiteId()
```

`google-beta.string.withSiteId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the site_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `site_id` field.


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


### fn withWaitDnsVerification

```ts
withWaitDnsVerification()
```

`google-beta.bool.withWaitDnsVerification` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the wait_dns_verification field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `wait_dns_verification` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_firebase_hosting_custom_domain.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
