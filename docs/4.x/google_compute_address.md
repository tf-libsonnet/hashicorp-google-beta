---
permalink: /google_compute_address/
---

# google_compute_address

`google_compute_address` represents the `google-beta_google_compute_address` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAddress()`](#fn-withaddress)
* [`fn withAddressType()`](#fn-withaddresstype)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withIpVersion()`](#fn-withipversion)
* [`fn withIpv6EndpointType()`](#fn-withipv6endpointtype)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNetworkTier()`](#fn-withnetworktier)
* [`fn withPrefixLength()`](#fn-withprefixlength)
* [`fn withProject()`](#fn-withproject)
* [`fn withPurpose()`](#fn-withpurpose)
* [`fn withRegion()`](#fn-withregion)
* [`fn withSubnetwork()`](#fn-withsubnetwork)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_compute_address.new` injects a new `google-beta_google_compute_address` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_compute_address.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_compute_address` using the reference:

    $._ref.google-beta_google_compute_address.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_compute_address.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `address` (`string`): The static external IP address represented by this resource.
The IP address must be inside the specified subnetwork,
if any. Set by the API if undefined. When `null`, the `address` field will be omitted from the resulting object.
  - `address_type` (`string`): The type of address to reserve.
Note: if you set this argument&#39;s value as &#39;INTERNAL&#39; you need to leave the &#39;network_tier&#39; argument unset in that resource block. Default value: &#34;EXTERNAL&#34; Possible values: [&#34;INTERNAL&#34;, &#34;EXTERNAL&#34;] When `null`, the `address_type` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `ip_version` (`string`): The IP Version that will be used by this address. The default value is &#39;IPV4&#39;. Possible values: [&#34;IPV4&#34;, &#34;IPV6&#34;] When `null`, the `ip_version` field will be omitted from the resulting object.
  - `ipv6_endpoint_type` (`string`): The endpoint type of this address, which should be VM or NETLB. This is
used for deciding which type of endpoint this address can be used after
the external IPv6 address reservation. Possible values: [&#34;VM&#34;, &#34;NETLB&#34;] When `null`, the `ipv6_endpoint_type` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this address.  A list of key-&gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `network` (`string`): The URL of the network in which to reserve the address. This field
can only be used with INTERNAL type with the VPC_PEERING and
IPSEC_INTERCONNECT purposes. When `null`, the `network` field will be omitted from the resulting object.
  - `network_tier` (`string`): The networking tier used for configuring this address. If this field is not
specified, it is assumed to be PREMIUM.
This argument should not be used when configuring Internal addresses, because [network tier cannot be set for internal traffic; it&#39;s always Premium](https://cloud.google.com/network-tiers/docs/overview). Possible values: [&#34;PREMIUM&#34;, &#34;STANDARD&#34;] When `null`, the `network_tier` field will be omitted from the resulting object.
  - `prefix_length` (`number`): The prefix length if the resource represents an IP range. When `null`, the `prefix_length` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `purpose` (`string`): The purpose of this resource, which can be one of the following values.

* GCE_ENDPOINT for addresses that are used by VM instances, alias IP
ranges, load balancers, and similar resources.

* SHARED_LOADBALANCER_VIP for an address that can be used by multiple
internal load balancers.

* VPC_PEERING for addresses that are reserved for VPC peer networks.

* IPSEC_INTERCONNECT for addresses created from a private IP range that
are reserved for a VLAN attachment in an HA VPN over Cloud Interconnect
configuration. These addresses are regional resources.

* PRIVATE_SERVICE_CONNECT for a private network address that is used to
configure Private Service Connect. Only global internal addresses can use
this purpose.


This should only be set when using an Internal address. When `null`, the `purpose` field will be omitted from the resulting object.
  - `region` (`string`): The Region in which the created address should reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The URL of the subnetwork in which to reserve the address. If an IP
address is specified, it must be within the subnetwork&#39;s IP range.
This field can only be used with INTERNAL type with
GCE_ENDPOINT/DNS_RESOLVER purposes. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_address.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_compute_address.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_address`
Terraform resource.

Unlike [google-beta.google_compute_address.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `address` (`string`): The static external IP address represented by this resource.
The IP address must be inside the specified subnetwork,
if any. Set by the API if undefined. When `null`, the `address` field will be omitted from the resulting object.
  - `address_type` (`string`): The type of address to reserve.
Note: if you set this argument&#39;s value as &#39;INTERNAL&#39; you need to leave the &#39;network_tier&#39; argument unset in that resource block. Default value: &#34;EXTERNAL&#34; Possible values: [&#34;INTERNAL&#34;, &#34;EXTERNAL&#34;] When `null`, the `address_type` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `ip_version` (`string`): The IP Version that will be used by this address. The default value is &#39;IPV4&#39;. Possible values: [&#34;IPV4&#34;, &#34;IPV6&#34;] When `null`, the `ip_version` field will be omitted from the resulting object.
  - `ipv6_endpoint_type` (`string`): The endpoint type of this address, which should be VM or NETLB. This is
used for deciding which type of endpoint this address can be used after
the external IPv6 address reservation. Possible values: [&#34;VM&#34;, &#34;NETLB&#34;] When `null`, the `ipv6_endpoint_type` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this address.  A list of key-&gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `network` (`string`): The URL of the network in which to reserve the address. This field
can only be used with INTERNAL type with the VPC_PEERING and
IPSEC_INTERCONNECT purposes. When `null`, the `network` field will be omitted from the resulting object.
  - `network_tier` (`string`): The networking tier used for configuring this address. If this field is not
specified, it is assumed to be PREMIUM.
This argument should not be used when configuring Internal addresses, because [network tier cannot be set for internal traffic; it&#39;s always Premium](https://cloud.google.com/network-tiers/docs/overview). Possible values: [&#34;PREMIUM&#34;, &#34;STANDARD&#34;] When `null`, the `network_tier` field will be omitted from the resulting object.
  - `prefix_length` (`number`): The prefix length if the resource represents an IP range. When `null`, the `prefix_length` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `purpose` (`string`): The purpose of this resource, which can be one of the following values.

* GCE_ENDPOINT for addresses that are used by VM instances, alias IP
ranges, load balancers, and similar resources.

* SHARED_LOADBALANCER_VIP for an address that can be used by multiple
internal load balancers.

* VPC_PEERING for addresses that are reserved for VPC peer networks.

* IPSEC_INTERCONNECT for addresses created from a private IP range that
are reserved for a VLAN attachment in an HA VPN over Cloud Interconnect
configuration. These addresses are regional resources.

* PRIVATE_SERVICE_CONNECT for a private network address that is used to
configure Private Service Connect. Only global internal addresses can use
this purpose.


This should only be set when using an Internal address. When `null`, the `purpose` field will be omitted from the resulting object.
  - `region` (`string`): The Region in which the created address should reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The URL of the subnetwork in which to reserve the address. If an IP
address is specified, it must be within the subnetwork&#39;s IP range.
This field can only be used with INTERNAL type with
GCE_ENDPOINT/DNS_RESOLVER purposes. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_address.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_address` resource into the root Terraform configuration.


### fn withAddress

```ts
withAddress()
```

`google-beta.string.withAddress` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the address field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `address` field.


### fn withAddressType

```ts
withAddressType()
```

`google-beta.string.withAddressType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the address_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `address_type` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withIpVersion

```ts
withIpVersion()
```

`google-beta.string.withIpVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_version` field.


### fn withIpv6EndpointType

```ts
withIpv6EndpointType()
```

`google-beta.string.withIpv6EndpointType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ipv6_endpoint_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ipv6_endpoint_type` field.


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


### fn withNetwork

```ts
withNetwork()
```

`google-beta.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


### fn withNetworkTier

```ts
withNetworkTier()
```

`google-beta.string.withNetworkTier` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network_tier field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network_tier` field.


### fn withPrefixLength

```ts
withPrefixLength()
```

`google-beta.number.withPrefixLength` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the prefix_length field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `prefix_length` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withPurpose

```ts
withPurpose()
```

`google-beta.string.withPurpose` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the purpose field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `purpose` field.


### fn withRegion

```ts
withRegion()
```

`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withSubnetwork

```ts
withSubnetwork()
```

`google-beta.string.withSubnetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the subnetwork field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `subnetwork` field.


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


`google-beta.google_compute_address.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
