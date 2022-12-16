local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  authentication:: {
    custom_account:: {
      new(
        login_url,
        password,
        username
      ):: std.prune(a={
        login_url: login_url,
        password: password,
        username: username,
      }),
    },
    google_account:: {
      new(
        password,
        username
      ):: std.prune(a={
        password: password,
        username: username,
      }),
    },
    new(
      custom_account=null,
      google_account=null
    ):: std.prune(a={
      custom_account: custom_account,
      google_account: google_account,
    }),
  },
  new(
    resourceLabel,
    display_name,
    starting_urls,
    authentication=null,
    blacklist_patterns=null,
    export_to_security_command_center=null,
    max_qps=null,
    project=null,
    schedule=null,
    target_platforms=null,
    timeouts=null,
    user_agent=null,
    _meta={}
  ):: tf.withResource(
    type='google_security_scanner_scan_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      authentication=authentication,
      blacklist_patterns=blacklist_patterns,
      display_name=display_name,
      export_to_security_command_center=export_to_security_command_center,
      max_qps=max_qps,
      project=project,
      schedule=schedule,
      starting_urls=starting_urls,
      target_platforms=target_platforms,
      timeouts=timeouts,
      user_agent=user_agent
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    starting_urls,
    authentication=null,
    blacklist_patterns=null,
    export_to_security_command_center=null,
    max_qps=null,
    project=null,
    schedule=null,
    target_platforms=null,
    timeouts=null,
    user_agent=null
  ):: std.prune(a={
    authentication: authentication,
    blacklist_patterns: blacklist_patterns,
    display_name: display_name,
    export_to_security_command_center: export_to_security_command_center,
    max_qps: max_qps,
    project: project,
    schedule: schedule,
    starting_urls: starting_urls,
    target_platforms: target_platforms,
    timeouts: timeouts,
    user_agent: user_agent,
  }),
  schedule:: {
    new(
      interval_duration_days,
      schedule_time=null
    ):: std.prune(a={
      interval_duration_days: interval_duration_days,
      schedule_time: schedule_time,
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
  withAuthentication(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          authentication: value,
        },
      },
    },
  },
  withAuthenticationMixin(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          authentication+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withBlacklistPatterns(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          blacklist_patterns: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withExportToSecurityCommandCenter(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          export_to_security_command_center: value,
        },
      },
    },
  },
  withMaxQps(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          max_qps: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSchedule(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          schedule: value,
        },
      },
    },
  },
  withScheduleMixin(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          schedule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withStartingUrls(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          starting_urls: value,
        },
      },
    },
  },
  withTargetPlatforms(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          target_platforms: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUserAgent(resourceLabel, value):: {
    resource+: {
      google_security_scanner_scan_config+: {
        [resourceLabel]+: {
          user_agent: value,
        },
      },
    },
  },
}
