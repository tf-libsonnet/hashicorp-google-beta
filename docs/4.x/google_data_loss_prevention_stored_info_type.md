---
permalink: /google_data_loss_prevention_stored_info_type/
---

# google_data_loss_prevention_stored_info_type

`google_data_loss_prevention_stored_info_type` represents the `google-beta_google_data_loss_prevention_stored_info_type` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDictionary()`](#fn-withdictionary)
* [`fn withDictionaryMixin()`](#fn-withdictionarymixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLargeCustomDictionary()`](#fn-withlargecustomdictionary)
* [`fn withLargeCustomDictionaryMixin()`](#fn-withlargecustomdictionarymixin)
* [`fn withParent()`](#fn-withparent)
* [`fn withRegex()`](#fn-withregex)
* [`fn withRegexMixin()`](#fn-withregexmixin)
* [`fn withStoredInfoTypeId()`](#fn-withstoredinfotypeid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj dictionary`](#obj-dictionary)
  * [`fn new()`](#fn-dictionarynew)
  * [`obj dictionary.cloud_storage_path`](#obj-dictionarycloud_storage_path)
    * [`fn new()`](#fn-dictionarycloud_storage_pathnew)
  * [`obj dictionary.word_list`](#obj-dictionaryword_list)
    * [`fn new()`](#fn-dictionaryword_listnew)
* [`obj large_custom_dictionary`](#obj-large_custom_dictionary)
  * [`fn new()`](#fn-large_custom_dictionarynew)
  * [`obj large_custom_dictionary.big_query_field`](#obj-large_custom_dictionarybig_query_field)
    * [`fn new()`](#fn-large_custom_dictionarybig_query_fieldnew)
    * [`obj large_custom_dictionary.big_query_field.field`](#obj-large_custom_dictionarybig_query_fieldfield)
      * [`fn new()`](#fn-large_custom_dictionarybig_query_fieldfieldnew)
    * [`obj large_custom_dictionary.big_query_field.table`](#obj-large_custom_dictionarybig_query_fieldtable)
      * [`fn new()`](#fn-large_custom_dictionarybig_query_fieldtablenew)
  * [`obj large_custom_dictionary.cloud_storage_file_set`](#obj-large_custom_dictionarycloud_storage_file_set)
    * [`fn new()`](#fn-large_custom_dictionarycloud_storage_file_setnew)
  * [`obj large_custom_dictionary.output_path`](#obj-large_custom_dictionaryoutput_path)
    * [`fn new()`](#fn-large_custom_dictionaryoutput_pathnew)
* [`obj regex`](#obj-regex)
  * [`fn new()`](#fn-regexnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_data_loss_prevention_stored_info_type.new` injects a new `google-beta_google_data_loss_prevention_stored_info_type` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_data_loss_prevention_stored_info_type.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_data_loss_prevention_stored_info_type` using the reference:

    $._ref.google-beta_google_data_loss_prevention_stored_info_type.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_data_loss_prevention_stored_info_type.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A description of the info type. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User set display name of the info type. When `null`, the `display_name` field will be omitted from the resulting object.
  - `parent` (`string`): The parent of the info type in any of the following formats:

* &#39;projects/{{project}}&#39;
* &#39;projects/{{project}}/locations/{{location}}&#39;
* &#39;organizations/{{organization_id}}&#39;
* &#39;organizations/{{organization_id}}/locations/{{location}}&#39;
  - `stored_info_type_id` (`string`): The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens;
that is, it must match the regular expression: [a-zA-Z\d-_]&#43;. The maximum length is 100
characters. Can be empty to allow the system to generate one. When `null`, the `stored_info_type_id` field will be omitted from the resulting object.
  - `dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.dictionary.new](#fn-dictionarynew) constructor.
  - `large_custom_dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `large_custom_dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.large_custom_dictionary.new](#fn-large_custom_dictionarynew) constructor.
  - `regex` (`list[obj]`): Regular expression which defines the rule. When `null`, the `regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.regex.new](#fn-regexnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_data_loss_prevention_stored_info_type.newAttrs` constructs a new object with attributes and blocks configured for the `google_data_loss_prevention_stored_info_type`
Terraform resource.

Unlike [google-beta.google_data_loss_prevention_stored_info_type.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A description of the info type. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User set display name of the info type. When `null`, the `display_name` field will be omitted from the resulting object.
  - `parent` (`string`): The parent of the info type in any of the following formats:

* &#39;projects/{{project}}&#39;
* &#39;projects/{{project}}/locations/{{location}}&#39;
* &#39;organizations/{{organization_id}}&#39;
* &#39;organizations/{{organization_id}}/locations/{{location}}&#39;
  - `stored_info_type_id` (`string`): The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens;
that is, it must match the regular expression: [a-zA-Z\d-_]&#43;. The maximum length is 100
characters. Can be empty to allow the system to generate one. When `null`, the `stored_info_type_id` field will be omitted from the resulting object.
  - `dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.dictionary.new](#fn-dictionarynew) constructor.
  - `large_custom_dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `large_custom_dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.large_custom_dictionary.new](#fn-large_custom_dictionarynew) constructor.
  - `regex` (`list[obj]`): Regular expression which defines the rule. When `null`, the `regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.regex.new](#fn-regexnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_data_loss_prevention_stored_info_type` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDictionary

```ts
withDictionary()
```

`google-beta.list[obj].withDictionary` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dictionary field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withDictionaryMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dictionary` field.


### fn withDictionaryMixin

```ts
withDictionaryMixin()
```

`google-beta.list[obj].withDictionaryMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dictionary field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withDictionary](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dictionary` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withLargeCustomDictionary

```ts
withLargeCustomDictionary()
```

`google-beta.list[obj].withLargeCustomDictionary` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the large_custom_dictionary field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withLargeCustomDictionaryMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `large_custom_dictionary` field.


### fn withLargeCustomDictionaryMixin

```ts
withLargeCustomDictionaryMixin()
```

`google-beta.list[obj].withLargeCustomDictionaryMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the large_custom_dictionary field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withLargeCustomDictionary](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `large_custom_dictionary` field.


### fn withParent

```ts
withParent()
```

`google-beta.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withRegex

```ts
withRegex()
```

`google-beta.list[obj].withRegex` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the regex field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withRegexMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `regex` field.


### fn withRegexMixin

```ts
withRegexMixin()
```

`google-beta.list[obj].withRegexMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the regex field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRegex](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `regex` field.


### fn withStoredInfoTypeId

```ts
withStoredInfoTypeId()
```

`google-beta.string.withStoredInfoTypeId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the stored_info_type_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `stored_info_type_id` field.


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


## obj dictionary



### fn dictionary.new

```ts
new()
```


`google-beta.google_data_loss_prevention_stored_info_type.dictionary.new` constructs a new object with attributes and blocks configured for the `dictionary`
Terraform sub block.



**Args**:
  - `cloud_storage_path` (`list[obj]`): Newline-delimited file of words in Cloud Storage. Only a single file is accepted. When `null`, the `cloud_storage_path` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.dictionary.cloud_storage_path.new](#fn-dictionarycloud_storage_pathnew) constructor.
  - `word_list` (`list[obj]`): List of words or phrases to search for. When `null`, the `word_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.dictionary.word_list.new](#fn-dictionaryword_listnew) constructor.

**Returns**:
  - An attribute object that represents the `dictionary` sub block.


## obj dictionary.cloud_storage_path



### fn dictionary.cloud_storage_path.new

```ts
new()
```


`google-beta.google_data_loss_prevention_stored_info_type.dictionary.cloud_storage_path.new` constructs a new object with attributes and blocks configured for the `cloud_storage_path`
Terraform sub block.



**Args**:
  - `path` (`string`): A url representing a file or path (no wildcards) in Cloud Storage. Example: &#39;gs://[BUCKET_NAME]/dictionary.txt&#39;

**Returns**:
  - An attribute object that represents the `cloud_storage_path` sub block.


## obj dictionary.word_list



### fn dictionary.word_list.new

```ts
new()
```


`google-beta.google_data_loss_prevention_stored_info_type.dictionary.word_list.new` constructs a new object with attributes and blocks configured for the `word_list`
Terraform sub block.



**Args**:
  - `words` (`list`): Words or phrases defining the dictionary. The dictionary must contain at least one
phrase and every phrase must contain at least 2 characters that are letters or digits.

**Returns**:
  - An attribute object that represents the `word_list` sub block.


## obj large_custom_dictionary



### fn large_custom_dictionary.new

```ts
new()
```


`google-beta.google_data_loss_prevention_stored_info_type.large_custom_dictionary.new` constructs a new object with attributes and blocks configured for the `large_custom_dictionary`
Terraform sub block.



**Args**:
  - `big_query_field` (`list[obj]`): Field in a BigQuery table where each cell represents a dictionary phrase. When `null`, the `big_query_field` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.large_custom_dictionary.big_query_field.new](#fn-large_custom_dictionarybig_query_fieldnew) constructor.
  - `cloud_storage_file_set` (`list[obj]`): Set of files containing newline-delimited lists of dictionary phrases. When `null`, the `cloud_storage_file_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.large_custom_dictionary.cloud_storage_file_set.new](#fn-large_custom_dictionarycloud_storage_file_setnew) constructor.
  - `output_path` (`list[obj]`): Location to store dictionary artifacts in Google Cloud Storage. These files will only be accessible by project owners and the DLP API.
If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used. When `null`, the `output_path` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.large_custom_dictionary.output_path.new](#fn-large_custom_dictionaryoutput_pathnew) constructor.

**Returns**:
  - An attribute object that represents the `large_custom_dictionary` sub block.


## obj large_custom_dictionary.big_query_field



### fn large_custom_dictionary.big_query_field.new

```ts
new()
```


`google-beta.google_data_loss_prevention_stored_info_type.large_custom_dictionary.big_query_field.new` constructs a new object with attributes and blocks configured for the `big_query_field`
Terraform sub block.



**Args**:
  - `field` (`list[obj]`): Designated field in the BigQuery table. When `null`, the `field` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.large_custom_dictionary.big_query_field.field.new](#fn-large_custom_dictionarylarge_custom_dictionaryfieldnew) constructor.
  - `table` (`list[obj]`): Field in a BigQuery table where each cell represents a dictionary phrase. When `null`, the `table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_data_loss_prevention_stored_info_type.large_custom_dictionary.big_query_field.table.new](#fn-large_custom_dictionarylarge_custom_dictionarytablenew) constructor.

**Returns**:
  - An attribute object that represents the `big_query_field` sub block.


## obj large_custom_dictionary.big_query_field.field



### fn large_custom_dictionary.big_query_field.field.new

```ts
new()
```


`google-beta.google_data_loss_prevention_stored_info_type.large_custom_dictionary.big_query_field.field.new` constructs a new object with attributes and blocks configured for the `field`
Terraform sub block.



**Args**:
  - `name` (`string`): Name describing the field.

**Returns**:
  - An attribute object that represents the `field` sub block.


## obj large_custom_dictionary.big_query_field.table



### fn large_custom_dictionary.big_query_field.table.new

```ts
new()
```


`google-beta.google_data_loss_prevention_stored_info_type.large_custom_dictionary.big_query_field.table.new` constructs a new object with attributes and blocks configured for the `table`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The dataset ID of the table.
  - `project_id` (`string`): The Google Cloud Platform project ID of the project containing the table.
  - `table_id` (`string`): The name of the table.

**Returns**:
  - An attribute object that represents the `table` sub block.


## obj large_custom_dictionary.cloud_storage_file_set



### fn large_custom_dictionary.cloud_storage_file_set.new

```ts
new()
```


`google-beta.google_data_loss_prevention_stored_info_type.large_custom_dictionary.cloud_storage_file_set.new` constructs a new object with attributes and blocks configured for the `cloud_storage_file_set`
Terraform sub block.



**Args**:
  - `url` (`string`): The url, in the format &#39;gs://&lt;bucket&gt;/&lt;path&gt;&#39;. Trailing wildcard in the path is allowed.

**Returns**:
  - An attribute object that represents the `cloud_storage_file_set` sub block.


## obj large_custom_dictionary.output_path



### fn large_custom_dictionary.output_path.new

```ts
new()
```


`google-beta.google_data_loss_prevention_stored_info_type.large_custom_dictionary.output_path.new` constructs a new object with attributes and blocks configured for the `output_path`
Terraform sub block.



**Args**:
  - `path` (`string`): A url representing a file or path (no wildcards) in Cloud Storage. Example: &#39;gs://[BUCKET_NAME]/dictionary.txt&#39;

**Returns**:
  - An attribute object that represents the `output_path` sub block.


## obj regex



### fn regex.new

```ts
new()
```


`google-beta.google_data_loss_prevention_stored_info_type.regex.new` constructs a new object with attributes and blocks configured for the `regex`
Terraform sub block.



**Args**:
  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.
  - `pattern` (`string`): Pattern defining the regular expression.
Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.

**Returns**:
  - An attribute object that represents the `regex` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_data_loss_prevention_stored_info_type.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
