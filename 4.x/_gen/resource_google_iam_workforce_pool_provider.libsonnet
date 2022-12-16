local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    location,
    provider_id,
    workforce_pool_id,
    attribute_condition=null,
    attribute_mapping=null,
    description=null,
    disabled=null,
    display_name=null,
    oidc=null,
    saml=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iam_workforce_pool_provider',
    label=resourceLabel,
    attrs=self.newAttrs(
      attribute_condition=attribute_condition,
      attribute_mapping=attribute_mapping,
      description=description,
      disabled=disabled,
      display_name=display_name,
      location=location,
      oidc=oidc,
      provider_id=provider_id,
      saml=saml,
      timeouts=timeouts,
      workforce_pool_id=workforce_pool_id
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    provider_id,
    workforce_pool_id,
    attribute_condition=null,
    attribute_mapping=null,
    description=null,
    disabled=null,
    display_name=null,
    oidc=null,
    saml=null,
    timeouts=null
  ):: std.prune(a={
    attribute_condition: attribute_condition,
    attribute_mapping: attribute_mapping,
    description: description,
    disabled: disabled,
    display_name: display_name,
    location: location,
    oidc: oidc,
    provider_id: provider_id,
    saml: saml,
    timeouts: timeouts,
    workforce_pool_id: workforce_pool_id,
  }),
  oidc:: {
    new(
      client_id,
      issuer_uri
    ):: std.prune(a={
      client_id: client_id,
      issuer_uri: issuer_uri,
    }),
  },
  saml:: {
    new(
      idp_metadata_xml
    ):: std.prune(a={
      idp_metadata_xml: idp_metadata_xml,
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
  withAttributeCondition(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          attribute_condition: value,
        },
      },
    },
  },
  withAttributeMapping(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          attribute_mapping: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withOidc(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          oidc: value,
        },
      },
    },
  },
  withOidcMixin(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          oidc+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProviderId(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          provider_id: value,
        },
      },
    },
  },
  withSaml(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          saml: value,
        },
      },
    },
  },
  withSamlMixin(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          saml+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withWorkforcePoolId(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          workforce_pool_id: value,
        },
      },
    },
  },
}
