local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  machine_image_encryption_key:: {
    new(
      kms_key_name=null,
      kms_key_service_account=null,
      raw_key=null
    ):: std.prune(a={
      kms_key_name: kms_key_name,
      kms_key_service_account: kms_key_service_account,
      raw_key: raw_key,
    }),
  },
  new(
    resourceLabel,
    name,
    source_instance,
    description=null,
    guest_flush=null,
    machine_image_encryption_key=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_machine_image',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      guest_flush=guest_flush,
      machine_image_encryption_key=machine_image_encryption_key,
      name=name,
      project=project,
      source_instance=source_instance,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    source_instance,
    description=null,
    guest_flush=null,
    machine_image_encryption_key=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    guest_flush: guest_flush,
    machine_image_encryption_key: machine_image_encryption_key,
    name: name,
    project: project,
    source_instance: source_instance,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withGuestFlush(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          guest_flush: value,
        },
      },
    },
  },
  withMachineImageEncryptionKey(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          machine_image_encryption_key: value,
        },
      },
    },
  },
  withMachineImageEncryptionKeyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          machine_image_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSourceInstance(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          source_instance: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
