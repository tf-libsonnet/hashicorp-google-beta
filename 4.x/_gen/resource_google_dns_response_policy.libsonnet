local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  gke_clusters:: {
    new(
      gke_cluster_name
    ):: std.prune(a={
      gke_cluster_name: gke_cluster_name,
    }),
  },
  networks:: {
    new(
      network_url
    ):: std.prune(a={
      network_url: network_url,
    }),
  },
  new(
    resourceLabel,
    response_policy_name,
    description=null,
    gke_clusters=null,
    networks=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dns_response_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      gke_clusters=gke_clusters,
      networks=networks,
      project=project,
      response_policy_name=response_policy_name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    response_policy_name,
    description=null,
    gke_clusters=null,
    networks=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    gke_clusters: gke_clusters,
    networks: networks,
    project: project,
    response_policy_name: response_policy_name,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withGkeClusters(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          gke_clusters: value,
        },
      },
    },
  },
  withGkeClustersMixin(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          gke_clusters+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNetworks(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          networks: value,
        },
      },
    },
  },
  withNetworksMixin(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          networks+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withResponsePolicyName(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          response_policy_name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
