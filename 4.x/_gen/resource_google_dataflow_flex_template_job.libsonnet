local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    container_spec_gcs_path,
    name,
    labels=null,
    on_delete=null,
    parameters=null,
    project=null,
    region=null,
    skip_wait_on_job_termination=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataflow_flex_template_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      container_spec_gcs_path=container_spec_gcs_path,
      labels=labels,
      name=name,
      on_delete=on_delete,
      parameters=parameters,
      project=project,
      region=region,
      skip_wait_on_job_termination=skip_wait_on_job_termination
    ),
    _meta=_meta
  ),
  newAttrs(
    container_spec_gcs_path,
    name,
    labels=null,
    on_delete=null,
    parameters=null,
    project=null,
    region=null,
    skip_wait_on_job_termination=null
  ):: std.prune(a={
    container_spec_gcs_path: container_spec_gcs_path,
    labels: labels,
    name: name,
    on_delete: on_delete,
    parameters: parameters,
    project: project,
    region: region,
    skip_wait_on_job_termination: skip_wait_on_job_termination,
  }),
  withContainerSpecGcsPath(resourceLabel, value):: {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          container_spec_gcs_path: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withOnDelete(resourceLabel, value):: {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          on_delete: value,
        },
      },
    },
  },
  withParameters(resourceLabel, value):: {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          parameters: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withSkipWaitOnJobTermination(resourceLabel, value):: {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          skip_wait_on_job_termination: value,
        },
      },
    },
  },
}
