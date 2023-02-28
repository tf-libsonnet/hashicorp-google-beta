---
permalink: /google_firebase_hosting_version/
---

# google_firebase_hosting_version

`google_firebase_hosting_version` represents the `google-beta_google_firebase_hosting_version` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withConfig()`](#fn-withconfig)
* [`fn withConfigMixin()`](#fn-withconfigmixin)
* [`fn withSiteId()`](#fn-withsiteid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj config`](#obj-config)
  * [`fn new()`](#fn-confignew)
  * [`obj config.redirects`](#obj-configredirects)
    * [`fn new()`](#fn-configredirectsnew)
  * [`obj config.rewrites`](#obj-configrewrites)
    * [`fn new()`](#fn-configrewritesnew)
    * [`obj config.rewrites.run`](#obj-configrewritesrun)
      * [`fn new()`](#fn-configrewritesrunnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_firebase_hosting_version.new` injects a new `google-beta_google_firebase_hosting_version` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_firebase_hosting_version.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_firebase_hosting_version` using the reference:

    $._ref.google-beta_google_firebase_hosting_version.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_firebase_hosting_version.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `site_id` (`string`): Required. The ID of the site in which to create this Version.
  - `config` (`list[obj]`): The configuration for the behavior of the site. This configuration exists in the &#39;firebase.json&#39; file. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.config.new](#fn-confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_firebase_hosting_version.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_hosting_version`
Terraform resource.

Unlike [google-beta.google_firebase_hosting_version.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `site_id` (`string`): Required. The ID of the site in which to create this Version.
  - `config` (`list[obj]`): The configuration for the behavior of the site. This configuration exists in the &#39;firebase.json&#39; file. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.config.new](#fn-confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_firebase_hosting_version` resource into the root Terraform configuration.


### fn withConfig

```ts
withConfig()
```

`google-beta.list[obj].withConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config` field.


### fn withConfigMixin

```ts
withConfigMixin()
```

`google-beta.list[obj].withConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config` field.


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


## obj config



### fn config.new

```ts
new()
```


`google-beta.google_firebase_hosting_version.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `redirects` (`list[obj]`): An array of objects (called redirect rules), where each rule specifies a URL pattern that, if matched to the request URL path,
triggers Hosting to respond with a redirect to the specified destination path. When `null`, the `redirects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.config.redirects.new](#fn-configredirectsnew) constructor.
  - `rewrites` (`list[obj]`): An array of objects (called rewrite rules), where each rule specifies a URL pattern that, if matched to the
request URL path, triggers Hosting to respond as if the service were given the specified destination URL. When `null`, the `rewrites` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.config.rewrites.new](#fn-configrewritesnew) constructor.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj config.redirects



### fn config.redirects.new

```ts
new()
```


`google-beta.google_firebase_hosting_version.config.redirects.new` constructs a new object with attributes and blocks configured for the `redirects`
Terraform sub block.



**Args**:
  - `glob` (`string`): The user-supplied glob to match against the request URL path. When `null`, the `glob` field will be omitted from the resulting object.
  - `location` (`string`): The value to put in the HTTP location header of the response.
The location can contain capture group values from the pattern using a : prefix to identify
the segment and an optional * to capture the rest of the URL. For example:

&#39;&#39;&#39;hcl
redirects {
  glob = &#34;/:capture*&#34;
  status_code = 302
  location = &#34;https://example.com/foo/:capture&#34;
}
&#39;&#39;&#39;
  - `regex` (`string`): The user-supplied RE2 regular expression to match against the request URL path. When `null`, the `regex` field will be omitted from the resulting object.
  - `status_code` (`number`): The status HTTP code to return in the response. It must be a valid 3xx status code.

**Returns**:
  - An attribute object that represents the `redirects` sub block.


## obj config.rewrites



### fn config.rewrites.new

```ts
new()
```


`google-beta.google_firebase_hosting_version.config.rewrites.new` constructs a new object with attributes and blocks configured for the `rewrites`
Terraform sub block.



**Args**:
  - `function_` (`string`): The function to proxy requests to. Must match the exported function name exactly. When `null`, the `function_` field will be omitted from the resulting object.
  - `glob` (`string`): The user-supplied glob to match against the request URL path. When `null`, the `glob` field will be omitted from the resulting object.
  - `regex` (`string`): The user-supplied RE2 regular expression to match against the request URL path. When `null`, the `regex` field will be omitted from the resulting object.
  - `run` (`list[obj]`): The request will be forwarded to Cloud Run. When `null`, the `run` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_version.config.rewrites.run.new](#fn-configconfigrunnew) constructor.

**Returns**:
  - An attribute object that represents the `rewrites` sub block.


## obj config.rewrites.run



### fn config.rewrites.run.new

```ts
new()
```


`google-beta.google_firebase_hosting_version.config.rewrites.run.new` constructs a new object with attributes and blocks configured for the `run`
Terraform sub block.



**Args**:
  - `region` (`string`): Optional. User-provided region where the Cloud Run service is hosted. Defaults to &#39;us-central1&#39; if not supplied. When `null`, the `region` field will be omitted from the resulting object.
  - `service_id` (`string`): User-defined ID of the Cloud Run service.

**Returns**:
  - An attribute object that represents the `run` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_firebase_hosting_version.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
