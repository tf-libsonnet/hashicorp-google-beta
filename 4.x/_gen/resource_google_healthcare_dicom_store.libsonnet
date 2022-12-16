local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
    new(
      pubsub_topic
    ):: std.prune(a={
      pubsub_topic: pubsub_topic,
    }),
  },
  stream_configs:: {
    bigquery_destination:: {
      new(
        table_uri
      ):: std.prune(a={
        table_uri: table_uri,
      }),
    },
    new(
      bigquery_destination=null
    ):: std.prune(a={
      bigquery_destination: bigquery_destination,
    }),
  },
  timeouts:: {
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
  withDataset(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          dataset: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNotificationConfig(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          notification_config: value,
        },
      },
    },
  },
  withNotificationConfigMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          notification_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withStreamConfigs(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          stream_configs: value,
        },
      },
    },
  },
  withStreamConfigsMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          stream_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
