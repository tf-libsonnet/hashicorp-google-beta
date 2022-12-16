local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    authorized_network,
    domain_resource,
    peering_id,
    labels=null,
    project=null,
    status=null,
    status_message=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_active_directory_peering',
    label=resourceLabel,
    attrs=self.newAttrs(
      authorized_network=authorized_network,
      domain_resource=domain_resource,
      labels=labels,
      peering_id=peering_id,
      project=project,
      status=status,
      status_message=status_message,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    authorized_network,
    domain_resource,
    peering_id,
    labels=null,
    project=null,
    status=null,
    status_message=null,
    timeouts=null
  ):: std.prune(a={
    authorized_network: authorized_network,
    domain_resource: domain_resource,
    labels: labels,
    peering_id: peering_id,
    project: project,
    status: status,
    status_message: status_message,
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
  withAuthorizedNetwork(resourceLabel, value):: {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          authorized_network: value,
        },
      },
    },
  },
  withDomainResource(resourceLabel, value):: {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          domain_resource: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withPeeringId(resourceLabel, value):: {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          peering_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withStatus(resourceLabel, value):: {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          status: value,
        },
      },
    },
  },
  withStatusMessage(resourceLabel, value):: {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          status_message: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_active_directory_peering+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
