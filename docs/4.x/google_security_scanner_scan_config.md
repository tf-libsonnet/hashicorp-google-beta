---
permalink: /google_security_scanner_scan_config/
---

# google_security_scanner_scan_config

`google_security_scanner_scan_config` represents the `google-beta_google_security_scanner_scan_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuthentication()`](#fn-withauthentication)
* [`fn withAuthenticationMixin()`](#fn-withauthenticationmixin)
* [`fn withBlacklistPatterns()`](#fn-withblacklistpatterns)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withExportToSecurityCommandCenter()`](#fn-withexporttosecuritycommandcenter)
* [`fn withMaxQps()`](#fn-withmaxqps)
* [`fn withProject()`](#fn-withproject)
* [`fn withSchedule()`](#fn-withschedule)
* [`fn withScheduleMixin()`](#fn-withschedulemixin)
* [`fn withStartingUrls()`](#fn-withstartingurls)
* [`fn withTargetPlatforms()`](#fn-withtargetplatforms)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUserAgent()`](#fn-withuseragent)
* [`obj authentication`](#obj-authentication)
  * [`fn new()`](#fn-authenticationnew)
  * [`obj authentication.custom_account`](#obj-authenticationcustom_account)
    * [`fn new()`](#fn-authenticationcustom_accountnew)
  * [`obj authentication.google_account`](#obj-authenticationgoogle_account)
    * [`fn new()`](#fn-authenticationgoogle_accountnew)
* [`obj schedule`](#obj-schedule)
  * [`fn new()`](#fn-schedulenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_security_scanner_scan_config.new` injects a new `google-beta_google_security_scanner_scan_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_security_scanner_scan_config.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_security_scanner_scan_config` using the reference:

    $._ref.google-beta_google_security_scanner_scan_config.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_security_scanner_scan_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `blacklist_patterns` (`list`): The blacklist URL patterns as described in
https://cloud.google.com/security-scanner/docs/excluded-urls When `null`, the `blacklist_patterns` field will be omitted from the resulting object.
  - `display_name` (`string`): The user provider display name of the ScanConfig.
  - `export_to_security_command_center` (`string`): Controls export of scan configurations and results to Cloud Security Command Center. Default value: &#34;ENABLED&#34; Possible values: [&#34;ENABLED&#34;, &#34;DISABLED&#34;] When `null`, the `export_to_security_command_center` field will be omitted from the resulting object.
  - `max_qps` (`number`): The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively.
Defaults to 15. When `null`, the `max_qps` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `starting_urls` (`list`): The starting URLs from which the scanner finds site pages.
  - `target_platforms` (`list`): Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be used as a default. Possible values: [&#34;APP_ENGINE&#34;, &#34;COMPUTE&#34;] When `null`, the `target_platforms` field will be omitted from the resulting object.
  - `user_agent` (`string`): Type of the user agents used for scanning Default value: &#34;CHROME_LINUX&#34; Possible values: [&#34;USER_AGENT_UNSPECIFIED&#34;, &#34;CHROME_LINUX&#34;, &#34;CHROME_ANDROID&#34;, &#34;SAFARI_IPHONE&#34;] When `null`, the `user_agent` field will be omitted from the resulting object.
  - `authentication` (`list[obj]`): The authentication configuration.
If specified, service will use the authentication configuration during scanning. When `null`, the `authentication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.authentication.new](#fn-google_security_scanner_scan_configauthenticationnew) constructor.
  - `schedule` (`list[obj]`): The schedule of the ScanConfig When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.schedule.new](#fn-google_security_scanner_scan_configschedulenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.timeouts.new](#fn-google_security_scanner_scan_configtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_security_scanner_scan_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_security_scanner_scan_config`
Terraform resource.

Unlike [google-beta.google_security_scanner_scan_config.new](#fn-google_security_scanner_scan_confignew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `blacklist_patterns` (`list`): The blacklist URL patterns as described in
https://cloud.google.com/security-scanner/docs/excluded-urls When `null`, the `blacklist_patterns` field will be omitted from the resulting object.
  - `display_name` (`string`): The user provider display name of the ScanConfig.
  - `export_to_security_command_center` (`string`): Controls export of scan configurations and results to Cloud Security Command Center. Default value: &#34;ENABLED&#34; Possible values: [&#34;ENABLED&#34;, &#34;DISABLED&#34;] When `null`, the `export_to_security_command_center` field will be omitted from the resulting object.
  - `max_qps` (`number`): The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively.
Defaults to 15. When `null`, the `max_qps` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `starting_urls` (`list`): The starting URLs from which the scanner finds site pages.
  - `target_platforms` (`list`): Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be used as a default. Possible values: [&#34;APP_ENGINE&#34;, &#34;COMPUTE&#34;] When `null`, the `target_platforms` field will be omitted from the resulting object.
  - `user_agent` (`string`): Type of the user agents used for scanning Default value: &#34;CHROME_LINUX&#34; Possible values: [&#34;USER_AGENT_UNSPECIFIED&#34;, &#34;CHROME_LINUX&#34;, &#34;CHROME_ANDROID&#34;, &#34;SAFARI_IPHONE&#34;] When `null`, the `user_agent` field will be omitted from the resulting object.
  - `authentication` (`list[obj]`): The authentication configuration.
If specified, service will use the authentication configuration during scanning. When `null`, the `authentication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.authentication.new](#fn-google_security_scanner_scan_configauthenticationnew) constructor.
  - `schedule` (`list[obj]`): The schedule of the ScanConfig When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.schedule.new](#fn-google_security_scanner_scan_configschedulenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.timeouts.new](#fn-google_security_scanner_scan_configtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_security_scanner_scan_config` resource into the root Terraform configuration.


### fn withAuthentication

```ts
withAuthentication()
```

`google-beta.list[obj].withAuthentication` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authentication field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withAuthenticationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authentication` field.


### fn withAuthenticationMixin

```ts
withAuthenticationMixin()
```

`google-beta.list[obj].withAuthenticationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authentication field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAuthentication](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authentication` field.


### fn withBlacklistPatterns

```ts
withBlacklistPatterns()
```

`google-beta.list.withBlacklistPatterns` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the blacklist_patterns field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `blacklist_patterns` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withExportToSecurityCommandCenter

```ts
withExportToSecurityCommandCenter()
```

`google-beta.string.withExportToSecurityCommandCenter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the export_to_security_command_center field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `export_to_security_command_center` field.


### fn withMaxQps

```ts
withMaxQps()
```

`google-beta.number.withMaxQps` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the max_qps field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `max_qps` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSchedule

```ts
withSchedule()
```

`google-beta.list[obj].withSchedule` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the schedule field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withScheduleMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `schedule` field.


### fn withScheduleMixin

```ts
withScheduleMixin()
```

`google-beta.list[obj].withScheduleMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the schedule field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withSchedule](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `schedule` field.


### fn withStartingUrls

```ts
withStartingUrls()
```

`google-beta.list.withStartingUrls` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the starting_urls field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `starting_urls` field.


### fn withTargetPlatforms

```ts
withTargetPlatforms()
```

`google-beta.list.withTargetPlatforms` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the target_platforms field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `target_platforms` field.


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


### fn withUserAgent

```ts
withUserAgent()
```

`google-beta.string.withUserAgent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the user_agent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `user_agent` field.


## obj authentication



### fn authentication.new

```ts
new()
```


`google-beta.google_security_scanner_scan_config.authentication.new` constructs a new object with attributes and blocks configured for the `authentication`
Terraform sub block.



**Args**:
  - `custom_account` (`list[obj]`): Describes authentication configuration that uses a custom account. When `null`, the `custom_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.authentication.custom_account.new](#fn-authenticationcustom_accountnew) constructor.
  - `google_account` (`list[obj]`): Describes authentication configuration that uses a Google account. When `null`, the `google_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_security_scanner_scan_config.authentication.google_account.new](#fn-authenticationgoogle_accountnew) constructor.

**Returns**:
  - An attribute object that represents the `authentication` sub block.


## obj authentication.custom_account



### fn authentication.custom_account.new

```ts
new()
```


`google-beta.google_security_scanner_scan_config.authentication.custom_account.new` constructs a new object with attributes and blocks configured for the `custom_account`
Terraform sub block.



**Args**:
  - `login_url` (`string`): The login form URL of the website.
  - `password` (`string`): The password of the custom account. The credential is stored encrypted
in GCP.
  - `username` (`string`): The user name of the custom account.

**Returns**:
  - An attribute object that represents the `custom_account` sub block.


## obj authentication.google_account



### fn authentication.google_account.new

```ts
new()
```


`google-beta.google_security_scanner_scan_config.authentication.google_account.new` constructs a new object with attributes and blocks configured for the `google_account`
Terraform sub block.



**Args**:
  - `password` (`string`): The password of the Google account. The credential is stored encrypted
in GCP.
  - `username` (`string`): The user name of the Google account.

**Returns**:
  - An attribute object that represents the `google_account` sub block.


## obj schedule



### fn schedule.new

```ts
new()
```


`google-beta.google_security_scanner_scan_config.schedule.new` constructs a new object with attributes and blocks configured for the `schedule`
Terraform sub block.



**Args**:
  - `interval_duration_days` (`number`): The duration of time between executions in days
  - `schedule_time` (`string`): A timestamp indicates when the next run will be scheduled. The value is refreshed
by the server after each run. If unspecified, it will default to current server time,
which means the scan will be scheduled to start immediately. When `null`, the `schedule_time` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `schedule` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_security_scanner_scan_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
