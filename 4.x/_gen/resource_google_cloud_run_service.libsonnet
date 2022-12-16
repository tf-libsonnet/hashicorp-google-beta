local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  metadata:: {
    new(
      annotations=null,
      labels=null,
      namespace=null
    ):: std.prune(a={
      annotations: annotations,
      labels: labels,
      namespace: namespace,
    }),
  },
  new(
    resourceLabel,
    location,
    name,
    autogenerate_revision_name=null,
    metadata=null,
    project=null,
    template=null,
    timeouts=null,
    traffic=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_run_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      autogenerate_revision_name=autogenerate_revision_name,
      location=location,
      metadata=metadata,
      name=name,
      project=project,
      template=template,
      timeouts=timeouts,
      traffic=traffic
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    autogenerate_revision_name=null,
    metadata=null,
    project=null,
    template=null,
    timeouts=null,
    traffic=null
  ):: std.prune(a={
    autogenerate_revision_name: autogenerate_revision_name,
    location: location,
    metadata: metadata,
    name: name,
    project: project,
    template: template,
    timeouts: timeouts,
    traffic: traffic,
  }),
  template:: {
    metadata:: {
      new(
        annotations=null,
        labels=null,
        name=null,
        namespace=null
      ):: std.prune(a={
        annotations: annotations,
        labels: labels,
        name: name,
        namespace: namespace,
      }),
    },
    new(
      metadata=null,
      spec=null
    ):: std.prune(a={
      metadata: metadata,
      spec: spec,
    }),
    spec:: {
      containers:: {
        env:: {
          new(
            name=null,
            value=null,
            value_from=null
          ):: std.prune(a={
            name: name,
            value: value,
            value_from: value_from,
          }),
          value_from:: {
            new(
              secret_key_ref=null
            ):: std.prune(a={
              secret_key_ref: secret_key_ref,
            }),
            secret_key_ref:: {
              new(
                key,
                name
              ):: std.prune(a={
                key: key,
                name: name,
              }),
            },
          },
        },
        env_from:: {
          config_map_ref:: {
            local_object_reference:: {
              new(
                name
              ):: std.prune(a={
                name: name,
              }),
            },
            new(
              local_object_reference=null,
              optional=null
            ):: std.prune(a={
              local_object_reference: local_object_reference,
              optional: optional,
            }),
          },
          new(
            config_map_ref=null,
            prefix=null,
            secret_ref=null
          ):: std.prune(a={
            config_map_ref: config_map_ref,
            prefix: prefix,
            secret_ref: secret_ref,
          }),
          secret_ref:: {
            local_object_reference:: {
              new(
                name
              ):: std.prune(a={
                name: name,
              }),
            },
            new(
              local_object_reference=null,
              optional=null
            ):: std.prune(a={
              local_object_reference: local_object_reference,
              optional: optional,
            }),
          },
        },
        liveness_probe:: {
          grpc:: {
            new(
              port=null,
              service=null
            ):: std.prune(a={
              port: port,
              service: service,
            }),
          },
          http_get:: {
            http_headers:: {
              new(
                name,
                value=null
              ):: std.prune(a={
                name: name,
                value: value,
              }),
            },
            new(
              http_headers=null,
              path=null
            ):: std.prune(a={
              http_headers: http_headers,
              path: path,
            }),
          },
          new(
            failure_threshold=null,
            grpc=null,
            http_get=null,
            initial_delay_seconds=null,
            period_seconds=null,
            timeout_seconds=null
          ):: std.prune(a={
            failure_threshold: failure_threshold,
            grpc: grpc,
            http_get: http_get,
            initial_delay_seconds: initial_delay_seconds,
            period_seconds: period_seconds,
            timeout_seconds: timeout_seconds,
          }),
        },
        new(
          image,
          args=null,
          command=null,
          env=null,
          env_from=null,
          liveness_probe=null,
          ports=null,
          resources=null,
          startup_probe=null,
          volume_mounts=null,
          working_dir=null
        ):: std.prune(a={
          args: args,
          command: command,
          env: env,
          env_from: env_from,
          image: image,
          liveness_probe: liveness_probe,
          ports: ports,
          resources: resources,
          startup_probe: startup_probe,
          volume_mounts: volume_mounts,
          working_dir: working_dir,
        }),
        ports:: {
          new(
            container_port=null,
            name=null,
            protocol=null
          ):: std.prune(a={
            container_port: container_port,
            name: name,
            protocol: protocol,
          }),
        },
        resources:: {
          new(
            limits=null,
            requests=null
          ):: std.prune(a={
            limits: limits,
            requests: requests,
          }),
        },
        startup_probe:: {
          grpc:: {
            new(
              port=null,
              service=null
            ):: std.prune(a={
              port: port,
              service: service,
            }),
          },
          http_get:: {
            http_headers:: {
              new(
                name,
                value=null
              ):: std.prune(a={
                name: name,
                value: value,
              }),
            },
            new(
              http_headers=null,
              path=null
            ):: std.prune(a={
              http_headers: http_headers,
              path: path,
            }),
          },
          new(
            failure_threshold=null,
            grpc=null,
            http_get=null,
            initial_delay_seconds=null,
            period_seconds=null,
            tcp_socket=null,
            timeout_seconds=null
          ):: std.prune(a={
            failure_threshold: failure_threshold,
            grpc: grpc,
            http_get: http_get,
            initial_delay_seconds: initial_delay_seconds,
            period_seconds: period_seconds,
            tcp_socket: tcp_socket,
            timeout_seconds: timeout_seconds,
          }),
          tcp_socket:: {
            new(
              port=null
            ):: std.prune(a={
              port: port,
            }),
          },
        },
        volume_mounts:: {
          new(
            mount_path,
            name
          ):: std.prune(a={
            mount_path: mount_path,
            name: name,
          }),
        },
      },
      new(
        container_concurrency=null,
        containers=null,
        service_account_name=null,
        timeout_seconds=null,
        volumes=null
      ):: std.prune(a={
        container_concurrency: container_concurrency,
        containers: containers,
        service_account_name: service_account_name,
        timeout_seconds: timeout_seconds,
        volumes: volumes,
      }),
      volumes:: {
        new(
          name,
          secret=null
        ):: std.prune(a={
          name: name,
          secret: secret,
        }),
        secret:: {
          items:: {
            new(
              key,
              path,
              mode=null
            ):: std.prune(a={
              key: key,
              mode: mode,
              path: path,
            }),
          },
          new(
            secret_name,
            default_mode=null,
            items=null
          ):: std.prune(a={
            default_mode: default_mode,
            items: items,
            secret_name: secret_name,
          }),
        },
      },
    },
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
  traffic:: {
    new(
      percent,
      latest_revision=null,
      revision_name=null,
      tag=null
    ):: std.prune(a={
      latest_revision: latest_revision,
      percent: percent,
      revision_name: revision_name,
      tag: tag,
    }),
  },
  withAutogenerateRevisionName(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          autogenerate_revision_name: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  withMetadataMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          metadata+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTemplate(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          template: value,
        },
      },
    },
  },
  withTemplateMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          template+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTraffic(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          traffic: value,
        },
      },
    },
  },
  withTrafficMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          traffic+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
