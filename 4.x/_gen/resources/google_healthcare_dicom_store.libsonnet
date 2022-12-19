local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_healthcare_dicom_store', url='', help='`google_healthcare_dicom_store` represents the `google-beta_google_healthcare_dicom_store` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_healthcare_dicom_store.new` injects a new `google-beta_google_healthcare_dicom_store` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_healthcare_dicom_store.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_healthcare_dicom_store` using the reference:\n\n    $._ref.google-beta_google_healthcare_dicom_store.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_healthcare_dicom_store.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format\n\u0026#39;projects/{project}/locations/{location}/datasets/{dataset}\u0026#39;\n  - `labels` (`obj`): User-supplied key-value pairs used to organize DICOM stores.\n\nLabel keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must\nconform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}][\\p{Ll}\\p{Lo}\\p{N}_-]{0,62}\n\nLabel values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128\nbytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\n\nNo more than 64 labels can be associated with a given store.\n\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs.\nExample: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name for the DicomStore.\n\n** Changing this property may recreate the Dicom store (removing all data) **\n  - `notification_config` (`list[obj]`): A nested object resource When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.notification_config.new](#fn-notification_confignew) constructor.\n  - `stream_configs` (`list[obj]`): To enable streaming to BigQuery, configure the streamConfigs object in your DICOM store.\nstreamConfigs is an array, so you can specify multiple BigQuery destinations. You can stream metadata from a single DICOM store to up to five BigQuery tables in a BigQuery dataset. When `null`, the `stream_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.stream_configs.new](#fn-stream_configsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dataset,
    name,
    labels=null,
    notification_config=null,
    stream_configs=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_dicom_store',
    label=resourceLabel,
    attrs=self.newAttrs(
      dataset=dataset,
      labels=labels,
      name=name,
      notification_config=notification_config,
      stream_configs=stream_configs,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_healthcare_dicom_store.newAttrs` constructs a new object with attributes and blocks configured for the `google_healthcare_dicom_store`\nTerraform resource.\n\nUnlike [google-beta.google_healthcare_dicom_store.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format\n&#39;projects/{project}/locations/{location}/datasets/{dataset}&#39;\n  - `labels` (`obj`): User-supplied key-value pairs used to organize DICOM stores.\n\nLabel keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must\nconform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}][\\p{Ll}\\p{Lo}\\p{N}_-]{0,62}\n\nLabel values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128\nbytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\n\nNo more than 64 labels can be associated with a given store.\n\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name for the DicomStore.\n\n** Changing this property may recreate the Dicom store (removing all data) **\n  - `notification_config` (`list[obj]`): A nested object resource When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.notification_config.new](#fn-notification_confignew) constructor.\n  - `stream_configs` (`list[obj]`): To enable streaming to BigQuery, configure the streamConfigs object in your DICOM store.\nstreamConfigs is an array, so you can specify multiple BigQuery destinations. You can stream metadata from a single DICOM store to up to five BigQuery tables in a BigQuery dataset. When `null`, the `stream_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.stream_configs.new](#fn-stream_configsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_healthcare_dicom_store` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dataset,
    name,
    labels=null,
    notification_config=null,
    stream_configs=null,
    timeouts=null
  ):: std.prune(a={
    dataset: dataset,
    labels: labels,
    name: name,
    notification_config: notification_config,
    stream_configs: stream_configs,
    timeouts: timeouts,
  }),
  notification_config:: {
    '#new':: d.fn(help='\n`google-beta.google_healthcare_dicom_store.notification_config.new` constructs a new object with attributes and blocks configured for the `notification_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pubsub_topic` (`string`): The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.\nPubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.\nIt is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message\nwas published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a\nproject. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given\nCloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail.\n\n**Returns**:\n  - An attribute object that represents the `notification_config` sub block.\n', args=[]),
    new(
      pubsub_topic
    ):: std.prune(a={
      pubsub_topic: pubsub_topic,
    }),
  },
  stream_configs:: {
    bigquery_destination:: {
      '#new':: d.fn(help='\n`google-beta.google_healthcare_dicom_store.stream_configs.bigquery_destination.new` constructs a new object with attributes and blocks configured for the `bigquery_destination`\nTerraform sub block.\n\n\n\n**Args**:\n  - `table_uri` (`string`): a fully qualified BigQuery table URI where DICOM instance metadata will be streamed.\n\n**Returns**:\n  - An attribute object that represents the `bigquery_destination` sub block.\n', args=[]),
      new(
        table_uri
      ):: std.prune(a={
        table_uri: table_uri,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_healthcare_dicom_store.stream_configs.new` constructs a new object with attributes and blocks configured for the `stream_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bigquery_destination` (`list[obj]`): BigQueryDestination to include a fully qualified BigQuery table URI where DICOM instance metadata will be streamed. When `null`, the `bigquery_destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_healthcare_dicom_store.stream_configs.bigquery_destination.new](#fn-bigquery_destinationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `stream_configs` sub block.\n', args=[]),
    new(
      bigquery_destination=null
    ):: std.prune(a={
      bigquery_destination: bigquery_destination,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_healthcare_dicom_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withDataset':: d.fn(help='`google-beta.string.withDataset` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dataset field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dataset` field.\n', args=[]),
  withDataset(resourceLabel, value): {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          dataset: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNotificationConfig':: d.fn(help='`google-beta.list[obj].withNotificationConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notification_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withNotificationConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notification_config` field.\n', args=[]),
  withNotificationConfig(resourceLabel, value): {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          notification_config: value,
        },
      },
    },
  },
  '#withNotificationConfigMixin':: d.fn(help='`google-beta.list[obj].withNotificationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notification_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withNotificationConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notification_config` field.\n', args=[]),
  withNotificationConfigMixin(resourceLabel, value): {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          notification_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withStreamConfigs':: d.fn(help='`google-beta.list[obj].withStreamConfigs` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the stream_configs field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withStreamConfigsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `stream_configs` field.\n', args=[]),
  withStreamConfigs(resourceLabel, value): {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          stream_configs: value,
        },
      },
    },
  },
  '#withStreamConfigsMixin':: d.fn(help='`google-beta.list[obj].withStreamConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the stream_configs field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withStreamConfigs](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `stream_configs` field.\n', args=[]),
  withStreamConfigsMixin(resourceLabel, value): {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          stream_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
