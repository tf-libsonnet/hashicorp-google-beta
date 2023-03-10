---
permalink: /google_compute_node_group/
---

# google_compute_node_group

`google_compute_node_group` represents the `google-beta_google_compute_node_group` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAutoscalingPolicy()`](#fn-withautoscalingpolicy)
* [`fn withAutoscalingPolicyMixin()`](#fn-withautoscalingpolicymixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withInitialSize()`](#fn-withinitialsize)
* [`fn withMaintenancePolicy()`](#fn-withmaintenancepolicy)
* [`fn withMaintenanceWindow()`](#fn-withmaintenancewindow)
* [`fn withMaintenanceWindowMixin()`](#fn-withmaintenancewindowmixin)
* [`fn withName()`](#fn-withname)
* [`fn withNodeTemplate()`](#fn-withnodetemplate)
* [`fn withProject()`](#fn-withproject)
* [`fn withShareSettings()`](#fn-withsharesettings)
* [`fn withShareSettingsMixin()`](#fn-withsharesettingsmixin)
* [`fn withSize()`](#fn-withsize)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj autoscaling_policy`](#obj-autoscaling_policy)
  * [`fn new()`](#fn-autoscaling_policynew)
* [`obj maintenance_window`](#obj-maintenance_window)
  * [`fn new()`](#fn-maintenance_windownew)
* [`obj share_settings`](#obj-share_settings)
  * [`fn new()`](#fn-share_settingsnew)
  * [`obj share_settings.project_map`](#obj-share_settingsproject_map)
    * [`fn new()`](#fn-share_settingsproject_mapnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_compute_node_group.new` injects a new `google-beta_google_compute_node_group` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_compute_node_group.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_compute_node_group` using the reference:

    $._ref.google-beta_google_compute_node_group.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_compute_node_group.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional textual description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `initial_size` (`number`): The initial number of nodes in the node group. One of &#39;initial_size&#39; or &#39;size&#39; must be specified. When `null`, the `initial_size` field will be omitted from the resulting object.
  - `maintenance_policy` (`string`): Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. When `null`, the `maintenance_policy` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. When `null`, the `name` field will be omitted from the resulting object.
  - `node_template` (`string`): The URL of the node template to which this node group belongs.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `size` (`number`): The total number of nodes in the node group. One of &#39;initial_size&#39; or &#39;size&#39; must be specified. When `null`, the `size` field will be omitted from the resulting object.
  - `zone` (`string`): Zone where this node group is located When `null`, the `zone` field will be omitted from the resulting object.
  - `autoscaling_policy` (`list[obj]`): If you use sole-tenant nodes for your workloads, you can use the node
group autoscaler to automatically manage the sizes of your node groups. When `null`, the `autoscaling_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_node_group.autoscaling_policy.new](#fn-autoscaling_policynew) constructor.
  - `maintenance_window` (`list[obj]`): contains properties for the timeframe of maintenance When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_node_group.maintenance_window.new](#fn-maintenance_windownew) constructor.
  - `share_settings` (`list[obj]`): Share settings for the node group. When `null`, the `share_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_node_group.share_settings.new](#fn-share_settingsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_node_group.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_compute_node_group.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_node_group`
Terraform resource.

Unlike [google-beta.google_compute_node_group.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional textual description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `initial_size` (`number`): The initial number of nodes in the node group. One of &#39;initial_size&#39; or &#39;size&#39; must be specified. When `null`, the `initial_size` field will be omitted from the resulting object.
  - `maintenance_policy` (`string`): Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. When `null`, the `maintenance_policy` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. When `null`, the `name` field will be omitted from the resulting object.
  - `node_template` (`string`): The URL of the node template to which this node group belongs.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `size` (`number`): The total number of nodes in the node group. One of &#39;initial_size&#39; or &#39;size&#39; must be specified. When `null`, the `size` field will be omitted from the resulting object.
  - `zone` (`string`): Zone where this node group is located When `null`, the `zone` field will be omitted from the resulting object.
  - `autoscaling_policy` (`list[obj]`): If you use sole-tenant nodes for your workloads, you can use the node
group autoscaler to automatically manage the sizes of your node groups. When `null`, the `autoscaling_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_node_group.autoscaling_policy.new](#fn-autoscaling_policynew) constructor.
  - `maintenance_window` (`list[obj]`): contains properties for the timeframe of maintenance When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_node_group.maintenance_window.new](#fn-maintenance_windownew) constructor.
  - `share_settings` (`list[obj]`): Share settings for the node group. When `null`, the `share_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_node_group.share_settings.new](#fn-share_settingsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_node_group.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_node_group` resource into the root Terraform configuration.


### fn withAutoscalingPolicy

```ts
withAutoscalingPolicy()
```

`google-beta.list[obj].withAutoscalingPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscaling_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withAutoscalingPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscaling_policy` field.


### fn withAutoscalingPolicyMixin

```ts
withAutoscalingPolicyMixin()
```

`google-beta.list[obj].withAutoscalingPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscaling_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAutoscalingPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscaling_policy` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withInitialSize

```ts
withInitialSize()
```

`google-beta.number.withInitialSize` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the initial_size field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `initial_size` field.


### fn withMaintenancePolicy

```ts
withMaintenancePolicy()
```

`google-beta.string.withMaintenancePolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the maintenance_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `maintenance_policy` field.


### fn withMaintenanceWindow

```ts
withMaintenanceWindow()
```

`google-beta.list[obj].withMaintenanceWindow` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_window field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withMaintenanceWindowMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_window` field.


### fn withMaintenanceWindowMixin

```ts
withMaintenanceWindowMixin()
```

`google-beta.list[obj].withMaintenanceWindowMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_window field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withMaintenanceWindow](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_window` field.


### fn withName

```ts
withName()
```

`google-beta.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNodeTemplate

```ts
withNodeTemplate()
```

`google-beta.string.withNodeTemplate` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the node_template field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `node_template` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withShareSettings

```ts
withShareSettings()
```

`google-beta.list[obj].withShareSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the share_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withShareSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `share_settings` field.


### fn withShareSettingsMixin

```ts
withShareSettingsMixin()
```

`google-beta.list[obj].withShareSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the share_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withShareSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `share_settings` field.


### fn withSize

```ts
withSize()
```

`google-beta.number.withSize` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the size field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `size` field.


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


### fn withZone

```ts
withZone()
```

`google-beta.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj autoscaling_policy



### fn autoscaling_policy.new

```ts
new()
```


`google-beta.google_compute_node_group.autoscaling_policy.new` constructs a new object with attributes and blocks configured for the `autoscaling_policy`
Terraform sub block.



**Args**:
  - `max_nodes` (`number`): Maximum size of the node group. Set to a value less than or equal
to 100 and greater than or equal to min-nodes. When `null`, the `max_nodes` field will be omitted from the resulting object.
  - `min_nodes` (`number`): Minimum size of the node group. Must be less
than or equal to max-nodes. The default value is 0. When `null`, the `min_nodes` field will be omitted from the resulting object.
  - `mode` (`string`): The autoscaling mode. Set to one of the following:
  - OFF: Disables the autoscaler.
  - ON: Enables scaling in and scaling out.
  - ONLY_SCALE_OUT: Enables only scaling out.
  You must use this mode if your node groups are configured to
  restart their hosted VMs on minimal servers. Possible values: [&#34;OFF&#34;, &#34;ON&#34;, &#34;ONLY_SCALE_OUT&#34;] When `null`, the `mode` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `autoscaling_policy` sub block.


## obj maintenance_window



### fn maintenance_window.new

```ts
new()
```


`google-beta.google_compute_node_group.maintenance_window.new` constructs a new object with attributes and blocks configured for the `maintenance_window`
Terraform sub block.



**Args**:
  - `start_time` (`string`): instances.start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.

**Returns**:
  - An attribute object that represents the `maintenance_window` sub block.


## obj share_settings



### fn share_settings.new

```ts
new()
```


`google-beta.google_compute_node_group.share_settings.new` constructs a new object with attributes and blocks configured for the `share_settings`
Terraform sub block.



**Args**:
  - `share_type` (`string`): Node group sharing type. Possible values: [&#34;ORGANIZATION&#34;, &#34;SPECIFIC_PROJECTS&#34;, &#34;LOCAL&#34;]
  - `project_map` (`list[obj]`): A map of project id and project config. This is only valid when shareType&#39;s value is SPECIFIC_PROJECTS. When `null`, the `project_map` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_node_group.share_settings.project_map.new](#fn-share_settingsproject_mapnew) constructor.

**Returns**:
  - An attribute object that represents the `share_settings` sub block.


## obj share_settings.project_map



### fn share_settings.project_map.new

```ts
new()
```


`google-beta.google_compute_node_group.share_settings.project_map.new` constructs a new object with attributes and blocks configured for the `project_map`
Terraform sub block.



**Args**:
  - `project_id` (`string`): The project id/number should be the same as the key of this project config in the project map.

**Returns**:
  - An attribute object that represents the `project_map` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_compute_node_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
