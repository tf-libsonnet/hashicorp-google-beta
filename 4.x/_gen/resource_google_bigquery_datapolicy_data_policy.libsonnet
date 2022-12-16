local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  data_masking_policy:: {
    new(
      predefined_expression
    ):: std.prune(a={
      predefined_expression: predefined_expression,
    }),
  },
  new(
    resourceLabel,
    data_policy_id,
    data_policy_type,
    location,
    policy_tag,
    data_masking_policy=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_datapolicy_data_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      data_masking_policy=data_masking_policy,
      data_policy_id=data_policy_id,
      data_policy_type=data_policy_type,
      location=location,
      policy_tag=policy_tag,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    data_policy_id,
    data_policy_type,
    location,
    policy_tag,
    data_masking_policy=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    data_masking_policy: data_masking_policy,
    data_policy_id: data_policy_id,
    data_policy_type: data_policy_type,
    location: location,
    policy_tag: policy_tag,
    project: project,
    timeouts: timeouts,
  }),
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
  withDataMaskingPolicy(resourceLabel, value):: {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          data_masking_policy: value,
        },
      },
    },
  },
  withDataMaskingPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          data_masking_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDataPolicyId(resourceLabel, value):: {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          data_policy_id: value,
        },
      },
    },
  },
  withDataPolicyType(resourceLabel, value):: {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          data_policy_type: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyTag(resourceLabel, value):: {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          policy_tag: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
