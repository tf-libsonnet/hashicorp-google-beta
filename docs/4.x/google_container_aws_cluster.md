---
permalink: /google_container_aws_cluster/
---

# google_container_aws_cluster

`google_container_aws_cluster` represents the `google-beta_google_container_aws_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withAuthorization()`](#fn-withauthorization)
* [`fn withAuthorizationMixin()`](#fn-withauthorizationmixin)
* [`fn withAwsRegion()`](#fn-withawsregion)
* [`fn withControlPlane()`](#fn-withcontrolplane)
* [`fn withControlPlaneMixin()`](#fn-withcontrolplanemixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withFleet()`](#fn-withfleet)
* [`fn withFleetMixin()`](#fn-withfleetmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withLoggingConfig()`](#fn-withloggingconfig)
* [`fn withLoggingConfigMixin()`](#fn-withloggingconfigmixin)
* [`fn withName()`](#fn-withname)
* [`fn withNetworking()`](#fn-withnetworking)
* [`fn withNetworkingMixin()`](#fn-withnetworkingmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj authorization`](#obj-authorization)
  * [`fn new()`](#fn-authorizationnew)
  * [`obj authorization.admin_users`](#obj-authorizationadmin_users)
    * [`fn new()`](#fn-authorizationadmin_usersnew)
* [`obj control_plane`](#obj-control_plane)
  * [`fn new()`](#fn-control_planenew)
  * [`obj control_plane.aws_services_authentication`](#obj-control_planeaws_services_authentication)
    * [`fn new()`](#fn-control_planeaws_services_authenticationnew)
  * [`obj control_plane.config_encryption`](#obj-control_planeconfig_encryption)
    * [`fn new()`](#fn-control_planeconfig_encryptionnew)
  * [`obj control_plane.database_encryption`](#obj-control_planedatabase_encryption)
    * [`fn new()`](#fn-control_planedatabase_encryptionnew)
  * [`obj control_plane.instance_placement`](#obj-control_planeinstance_placement)
    * [`fn new()`](#fn-control_planeinstance_placementnew)
  * [`obj control_plane.main_volume`](#obj-control_planemain_volume)
    * [`fn new()`](#fn-control_planemain_volumenew)
  * [`obj control_plane.proxy_config`](#obj-control_planeproxy_config)
    * [`fn new()`](#fn-control_planeproxy_confignew)
  * [`obj control_plane.root_volume`](#obj-control_planeroot_volume)
    * [`fn new()`](#fn-control_planeroot_volumenew)
  * [`obj control_plane.ssh_config`](#obj-control_planessh_config)
    * [`fn new()`](#fn-control_planessh_confignew)
* [`obj fleet`](#obj-fleet)
  * [`fn new()`](#fn-fleetnew)
* [`obj logging_config`](#obj-logging_config)
  * [`fn new()`](#fn-logging_confignew)
  * [`obj logging_config.component_config`](#obj-logging_configcomponent_config)
    * [`fn new()`](#fn-logging_configcomponent_confignew)
* [`obj networking`](#obj-networking)
  * [`fn new()`](#fn-networkingnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_container_aws_cluster.new` injects a new `google-beta_google_container_aws_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_container_aws_cluster.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_container_aws_cluster` using the reference:

    $._ref.google-beta_google_container_aws_cluster.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_container_aws_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between. When `null`, the `annotations` field will be omitted from the resulting object.
  - `aws_region` (`string`): The AWS region where the cluster runs. Each Google Cloud region supports a subset of nearby AWS regions. You can call to list all supported AWS regions within a given Google Cloud region.
  - `description` (`string`): Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of this resource.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `authorization` (`list[obj]`): Configuration related to the cluster RBAC settings. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.authorization.new](#fn-authorizationnew) constructor.
  - `control_plane` (`list[obj]`): Configuration related to the cluster control plane. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.control_plane.new](#fn-control_planenew) constructor.
  - `fleet` (`list[obj]`): Fleet configuration. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.fleet.new](#fn-fleetnew) constructor.
  - `logging_config` (`list[obj]`): Logging configuration. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.logging_config.new](#fn-logging_confignew) constructor.
  - `networking` (`list[obj]`): Cluster-wide networking configuration. When `null`, the `networking` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.networking.new](#fn-networkingnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_container_aws_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `google_container_aws_cluster`
Terraform resource.

Unlike [google-beta.google_container_aws_cluster.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between. When `null`, the `annotations` field will be omitted from the resulting object.
  - `aws_region` (`string`): The AWS region where the cluster runs. Each Google Cloud region supports a subset of nearby AWS regions. You can call to list all supported AWS regions within a given Google Cloud region.
  - `description` (`string`): Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of this resource.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `authorization` (`list[obj]`): Configuration related to the cluster RBAC settings. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.authorization.new](#fn-authorizationnew) constructor.
  - `control_plane` (`list[obj]`): Configuration related to the cluster control plane. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.control_plane.new](#fn-control_planenew) constructor.
  - `fleet` (`list[obj]`): Fleet configuration. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.fleet.new](#fn-fleetnew) constructor.
  - `logging_config` (`list[obj]`): Logging configuration. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.logging_config.new](#fn-logging_confignew) constructor.
  - `networking` (`list[obj]`): Cluster-wide networking configuration. When `null`, the `networking` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.networking.new](#fn-networkingnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_container_aws_cluster` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google-beta.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withAuthorization

```ts
withAuthorization()
```

`google-beta.list[obj].withAuthorization` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authorization field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withAuthorizationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authorization` field.


### fn withAuthorizationMixin

```ts
withAuthorizationMixin()
```

`google-beta.list[obj].withAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authorization field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAuthorization](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authorization` field.


### fn withAwsRegion

```ts
withAwsRegion()
```

`google-beta.string.withAwsRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the aws_region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `aws_region` field.


### fn withControlPlane

```ts
withControlPlane()
```

`google-beta.list[obj].withControlPlane` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the control_plane field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withControlPlaneMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `control_plane` field.


### fn withControlPlaneMixin

```ts
withControlPlaneMixin()
```

`google-beta.list[obj].withControlPlaneMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the control_plane field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withControlPlane](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `control_plane` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withFleet

```ts
withFleet()
```

`google-beta.list[obj].withFleet` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fleet field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withFleetMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fleet` field.


### fn withFleetMixin

```ts
withFleetMixin()
```

`google-beta.list[obj].withFleetMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fleet field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withFleet](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fleet` field.


### fn withLocation

```ts
withLocation()
```

`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withLoggingConfig

```ts
withLoggingConfig()
```

`google-beta.list[obj].withLoggingConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the logging_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withLoggingConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `logging_config` field.


### fn withLoggingConfigMixin

```ts
withLoggingConfigMixin()
```

`google-beta.list[obj].withLoggingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the logging_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withLoggingConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `logging_config` field.


### fn withName

```ts
withName()
```

`google-beta.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetworking

```ts
withNetworking()
```

`google-beta.list[obj].withNetworking` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networking field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withNetworkingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networking` field.


### fn withNetworkingMixin

```ts
withNetworkingMixin()
```

`google-beta.list[obj].withNetworkingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networking field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withNetworking](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networking` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


## obj authorization



### fn authorization.new

```ts
new()
```


`google-beta.google_container_aws_cluster.authorization.new` constructs a new object with attributes and blocks configured for the `authorization`
Terraform sub block.



**Args**:
  - `admin_users` (`list[obj]`): Users to perform operations as a cluster admin. A managed ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole to the users. Up to ten admin users can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles When `null`, the `admin_users` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.authorization.admin_users.new](#fn-authorizationadmin_usersnew) constructor.

**Returns**:
  - An attribute object that represents the `authorization` sub block.


## obj authorization.admin_users



### fn authorization.admin_users.new

```ts
new()
```


`google-beta.google_container_aws_cluster.authorization.admin_users.new` constructs a new object with attributes and blocks configured for the `admin_users`
Terraform sub block.



**Args**:
  - `username` (`string`): The name of the user, e.g. `my-gcp-id@gmail.com`.

**Returns**:
  - An attribute object that represents the `admin_users` sub block.


## obj control_plane



### fn control_plane.new

```ts
new()
```


`google-beta.google_container_aws_cluster.control_plane.new` constructs a new object with attributes and blocks configured for the `control_plane`
Terraform sub block.



**Args**:
  - `iam_instance_profile` (`string`): The name of the AWS IAM instance pofile to assign to each control plane replica.
  - `instance_type` (`string`): Optional. The AWS instance type. When unspecified, it defaults to `m5.large`. When `null`, the `instance_type` field will be omitted from the resulting object.
  - `security_group_ids` (`list`): Optional. The IDs of additional security groups to add to control plane replicas. The Anthos Multi-Cloud API will automatically create and manage security groups with the minimum rules needed for a functioning cluster. When `null`, the `security_group_ids` field will be omitted from the resulting object.
  - `subnet_ids` (`list`): The list of subnets where control plane replicas will run. A replica will be provisioned on each subnet and up to three values can be provided. Each subnet must be in a different AWS Availability Zone (AZ).
  - `tags` (`obj`): Optional. A set of AWS resource tags to propagate to all underlying managed AWS resources. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.&#43;-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters. When `null`, the `tags` field will be omitted from the resulting object.
  - `version` (`string`): The Kubernetes version to run on control plane replicas (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling .
  - `aws_services_authentication` (`list[obj]`): Authentication configuration for management of AWS resources. When `null`, the `aws_services_authentication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.control_plane.aws_services_authentication.new](#fn-control_planeaws_services_authenticationnew) constructor.
  - `config_encryption` (`list[obj]`): The ARN of the AWS KMS key used to encrypt cluster configuration. When `null`, the `config_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.control_plane.config_encryption.new](#fn-control_planeconfig_encryptionnew) constructor.
  - `database_encryption` (`list[obj]`): The ARN of the AWS KMS key used to encrypt cluster secrets. When `null`, the `database_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.control_plane.database_encryption.new](#fn-control_planedatabase_encryptionnew) constructor.
  - `instance_placement` (`list[obj]`): Details of placement information for an instance. When `null`, the `instance_placement` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.control_plane.instance_placement.new](#fn-control_planeinstance_placementnew) constructor.
  - `main_volume` (`list[obj]`): Optional. Configuration related to the main volume provisioned for each control plane replica. The main volume is in charge of storing all of the cluster&#39;s etcd state. Volumes will be provisioned in the availability zone associated with the corresponding subnet. When unspecified, it defaults to 8 GiB with the GP2 volume type. When `null`, the `main_volume` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.control_plane.main_volume.new](#fn-control_planemain_volumenew) constructor.
  - `proxy_config` (`list[obj]`): Proxy configuration for outbound HTTP(S) traffic. When `null`, the `proxy_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.control_plane.proxy_config.new](#fn-control_planeproxy_confignew) constructor.
  - `root_volume` (`list[obj]`): Optional. Configuration related to the root volume provisioned for each control plane replica. Volumes will be provisioned in the availability zone associated with the corresponding subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type. When `null`, the `root_volume` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.control_plane.root_volume.new](#fn-control_planeroot_volumenew) constructor.
  - `ssh_config` (`list[obj]`): Optional. SSH configuration for how to access the underlying control plane machines. When `null`, the `ssh_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.control_plane.ssh_config.new](#fn-control_planessh_confignew) constructor.

**Returns**:
  - An attribute object that represents the `control_plane` sub block.


## obj control_plane.aws_services_authentication



### fn control_plane.aws_services_authentication.new

```ts
new()
```


`google-beta.google_container_aws_cluster.control_plane.aws_services_authentication.new` constructs a new object with attributes and blocks configured for the `aws_services_authentication`
Terraform sub block.



**Args**:
  - `role_arn` (`string`): The Amazon Resource Name (ARN) of the role that the Anthos Multi-Cloud API will assume when managing AWS resources on your account.
  - `role_session_name` (`string`): Optional. An identifier for the assumed role session. When unspecified, it defaults to `multicloud-service-agent`. When `null`, the `role_session_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `aws_services_authentication` sub block.


## obj control_plane.config_encryption



### fn control_plane.config_encryption.new

```ts
new()
```


`google-beta.google_container_aws_cluster.control_plane.config_encryption.new` constructs a new object with attributes and blocks configured for the `config_encryption`
Terraform sub block.



**Args**:
  - `kms_key_arn` (`string`): The ARN of the AWS KMS key used to encrypt cluster configuration.

**Returns**:
  - An attribute object that represents the `config_encryption` sub block.


## obj control_plane.database_encryption



### fn control_plane.database_encryption.new

```ts
new()
```


`google-beta.google_container_aws_cluster.control_plane.database_encryption.new` constructs a new object with attributes and blocks configured for the `database_encryption`
Terraform sub block.



**Args**:
  - `kms_key_arn` (`string`): The ARN of the AWS KMS key used to encrypt cluster secrets.

**Returns**:
  - An attribute object that represents the `database_encryption` sub block.


## obj control_plane.instance_placement



### fn control_plane.instance_placement.new

```ts
new()
```


`google-beta.google_container_aws_cluster.control_plane.instance_placement.new` constructs a new object with attributes and blocks configured for the `instance_placement`
Terraform sub block.



**Args**:
  - `tenancy` (`string`): The tenancy for the instance. Possible values: TENANCY_UNSPECIFIED, DEFAULT, DEDICATED, HOST When `null`, the `tenancy` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `instance_placement` sub block.


## obj control_plane.main_volume



### fn control_plane.main_volume.new

```ts
new()
```


`google-beta.google_container_aws_cluster.control_plane.main_volume.new` constructs a new object with attributes and blocks configured for the `main_volume`
Terraform sub block.



**Args**:
  - `iops` (`number`): Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume. When `null`, the `iops` field will be omitted from the resulting object.
  - `kms_key_arn` (`string`): Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used. When `null`, the `kms_key_arn` field will be omitted from the resulting object.
  - `size_gib` (`number`): Optional. The size of the volume, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. When `null`, the `size_gib` field will be omitted from the resulting object.
  - `throughput` (`number`): Optional. The throughput to provision for the volume, in MiB/s. Only valid if the volume type is GP3. When `null`, the `throughput` field will be omitted from the resulting object.
  - `volume_type` (`string`): Optional. Type of the EBS volume. When unspecified, it defaults to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2, GP3 When `null`, the `volume_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `main_volume` sub block.


## obj control_plane.proxy_config



### fn control_plane.proxy_config.new

```ts
new()
```


`google-beta.google_container_aws_cluster.control_plane.proxy_config.new` constructs a new object with attributes and blocks configured for the `proxy_config`
Terraform sub block.



**Args**:
  - `secret_arn` (`string`): The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  - `secret_version` (`string`): The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.

**Returns**:
  - An attribute object that represents the `proxy_config` sub block.


## obj control_plane.root_volume



### fn control_plane.root_volume.new

```ts
new()
```


`google-beta.google_container_aws_cluster.control_plane.root_volume.new` constructs a new object with attributes and blocks configured for the `root_volume`
Terraform sub block.



**Args**:
  - `iops` (`number`): Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume. When `null`, the `iops` field will be omitted from the resulting object.
  - `kms_key_arn` (`string`): Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used. When `null`, the `kms_key_arn` field will be omitted from the resulting object.
  - `size_gib` (`number`): Optional. The size of the volume, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. When `null`, the `size_gib` field will be omitted from the resulting object.
  - `throughput` (`number`): Optional. The throughput to provision for the volume, in MiB/s. Only valid if the volume type is GP3. When `null`, the `throughput` field will be omitted from the resulting object.
  - `volume_type` (`string`): Optional. Type of the EBS volume. When unspecified, it defaults to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2, GP3 When `null`, the `volume_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `root_volume` sub block.


## obj control_plane.ssh_config



### fn control_plane.ssh_config.new

```ts
new()
```


`google-beta.google_container_aws_cluster.control_plane.ssh_config.new` constructs a new object with attributes and blocks configured for the `ssh_config`
Terraform sub block.



**Args**:
  - `ec2_key_pair` (`string`): The name of the EC2 key pair used to login into cluster machines.

**Returns**:
  - An attribute object that represents the `ssh_config` sub block.


## obj fleet



### fn fleet.new

```ts
new()
```


`google-beta.google_container_aws_cluster.fleet.new` constructs a new object with attributes and blocks configured for the `fleet`
Terraform sub block.



**Args**:
  - `project` (`string`): The number of the Fleet host project where this cluster will be registered. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `fleet` sub block.


## obj logging_config



### fn logging_config.new

```ts
new()
```


`google-beta.google_container_aws_cluster.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`
Terraform sub block.



**Args**:
  - `component_config` (`list[obj]`): Configuration of the logging components. When `null`, the `component_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_container_aws_cluster.logging_config.component_config.new](#fn-logging_configcomponent_confignew) constructor.

**Returns**:
  - An attribute object that represents the `logging_config` sub block.


## obj logging_config.component_config



### fn logging_config.component_config.new

```ts
new()
```


`google-beta.google_container_aws_cluster.logging_config.component_config.new` constructs a new object with attributes and blocks configured for the `component_config`
Terraform sub block.



**Args**:
  - `enable_components` (`list`): Components of the logging configuration to be enabled. When `null`, the `enable_components` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `component_config` sub block.


## obj networking



### fn networking.new

```ts
new()
```


`google-beta.google_container_aws_cluster.networking.new` constructs a new object with attributes and blocks configured for the `networking`
Terraform sub block.



**Args**:
  - `per_node_pool_sg_rules_disabled` (`bool`): Disable the per node pool subnet security group rules on the control plane security group. When set to true, you must also provide one or more security groups that ensure node pools are able to send requests to the control plane on TCP/443 and TCP/8132. Failure to do so may result in unavailable node pools. When `null`, the `per_node_pool_sg_rules_disabled` field will be omitted from the resulting object.
  - `pod_address_cidr_blocks` (`list`): All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  - `service_address_cidr_blocks` (`list`): All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  - `vpc_id` (`string`): The VPC associated with the cluster. All component clusters (i.e. control plane and node pools) run on a single VPC. This field cannot be changed after creation.

**Returns**:
  - An attribute object that represents the `networking` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_container_aws_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
