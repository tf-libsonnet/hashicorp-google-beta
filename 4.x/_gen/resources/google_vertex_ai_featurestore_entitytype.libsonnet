local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_vertex_ai_featurestore_entitytype', url='', help='`google_vertex_ai_featurestore_entitytype` represents the `google-beta_google_vertex_ai_featurestore_entitytype` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  monitoring_config:: {
    categorical_threshold_config:: {
      '#new':: d.fn(help='\n`google-beta.google_vertex_ai_featurestore_entitytype.monitoring_config.categorical_threshold_config.new` constructs a new object with attributes and blocks configured for the `categorical_threshold_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `value` (`number`): Specify a threshold value that can trigger the alert. For categorical feature, the distribution distance is calculated by L-inifinity norm. Each feature must have a non-zero threshold if they need to be monitored. Otherwise no alert will be triggered for that feature. The default value is 0.3.\n\n**Returns**:\n  - An attribute object that represents the `categorical_threshold_config` sub block.\n', args=[]),
      new(
        value
      ):: std.prune(a={
        value: value,
      }),
    },
    import_features_analysis:: {
      '#new':: d.fn(help='\n`google-beta.google_vertex_ai_featurestore_entitytype.monitoring_config.import_features_analysis.new` constructs a new object with attributes and blocks configured for the `import_features_analysis`\nTerraform sub block.\n\n\n\n**Args**:\n  - `anomaly_detection_baseline` (`string`): Defines the baseline to do anomaly detection for feature values imported by each [entityTypes.importFeatureValues][] operation. The value must be one of the values below:\n* LATEST_STATS: Choose the later one statistics generated by either most recent snapshot analysis or previous import features analysis. If non of them exists, skip anomaly detection and only generate a statistics.\n* MOST_RECENT_SNAPSHOT_STATS: Use the statistics generated by the most recent snapshot analysis if exists.\n* PREVIOUS_IMPORT_FEATURES_STATS: Use the statistics generated by the previous import features analysis if exists. When `null`, the `anomaly_detection_baseline` field will be omitted from the resulting object.\n  - `state` (`string`): Whether to enable / disable / inherite default hebavior for import features analysis. The value must be one of the values below:\n* DEFAULT: The default behavior of whether to enable the monitoring. EntityType-level config: disabled.\n* ENABLED: Explicitly enables import features analysis. EntityType-level config: by default enables import features analysis for all Features under it.\n* DISABLED: Explicitly disables import features analysis. EntityType-level config: by default disables import features analysis for all Features under it. When `null`, the `state` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `import_features_analysis` sub block.\n', args=[]),
      new(
        anomaly_detection_baseline=null,
        state=null
      ):: std.prune(a={
        anomaly_detection_baseline: anomaly_detection_baseline,
        state: state,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_vertex_ai_featurestore_entitytype.monitoring_config.new` constructs a new object with attributes and blocks configured for the `monitoring_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `categorical_threshold_config` (`list[obj]`): Threshold for categorical features of anomaly detection. This is shared by all types of Featurestore Monitoring for categorical features (i.e. Features with type (Feature.ValueType) BOOL or STRING). When `null`, the `categorical_threshold_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_featurestore_entitytype.monitoring_config.categorical_threshold_config.new](#fn-monitoringconfigcategoricalthresholdconfignew) constructor.\n  - `import_features_analysis` (`list[obj]`): The config for ImportFeatures Analysis Based Feature Monitoring. When `null`, the `import_features_analysis` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_featurestore_entitytype.monitoring_config.import_features_analysis.new](#fn-monitoringconfigimportfeaturesanalysisnew) constructor.\n  - `numerical_threshold_config` (`list[obj]`): Threshold for numerical features of anomaly detection. This is shared by all objectives of Featurestore Monitoring for numerical features (i.e. Features with type (Feature.ValueType) DOUBLE or INT64). When `null`, the `numerical_threshold_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_featurestore_entitytype.monitoring_config.numerical_threshold_config.new](#fn-monitoringconfignumericalthresholdconfignew) constructor.\n  - `snapshot_analysis` (`list[obj]`): The config for Snapshot Analysis Based Feature Monitoring. When `null`, the `snapshot_analysis` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_featurestore_entitytype.monitoring_config.snapshot_analysis.new](#fn-monitoringconfigsnapshotanalysisnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `monitoring_config` sub block.\n', args=[]),
    new(
      categorical_threshold_config=null,
      import_features_analysis=null,
      numerical_threshold_config=null,
      snapshot_analysis=null
    ):: std.prune(a={
      categorical_threshold_config: categorical_threshold_config,
      import_features_analysis: import_features_analysis,
      numerical_threshold_config: numerical_threshold_config,
      snapshot_analysis: snapshot_analysis,
    }),
    numerical_threshold_config:: {
      '#new':: d.fn(help='\n`google-beta.google_vertex_ai_featurestore_entitytype.monitoring_config.numerical_threshold_config.new` constructs a new object with attributes and blocks configured for the `numerical_threshold_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `value` (`number`): Specify a threshold value that can trigger the alert. For numerical feature, the distribution distance is calculated by Jensen–Shannon divergence. Each feature must have a non-zero threshold if they need to be monitored. Otherwise no alert will be triggered for that feature. The default value is 0.3.\n\n**Returns**:\n  - An attribute object that represents the `numerical_threshold_config` sub block.\n', args=[]),
      new(
        value
      ):: std.prune(a={
        value: value,
      }),
    },
    snapshot_analysis:: {
      '#new':: d.fn(help='\n`google-beta.google_vertex_ai_featurestore_entitytype.monitoring_config.snapshot_analysis.new` constructs a new object with attributes and blocks configured for the `snapshot_analysis`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disabled` (`bool`): The monitoring schedule for snapshot analysis. For EntityType-level config: unset / disabled = true indicates disabled by default for Features under it; otherwise by default enable snapshot analysis monitoring with monitoringInterval for Features under it. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `monitoring_interval` (`string`): Configuration of the snapshot analysis based monitoring pipeline running interval. The value is rolled up to full day.\n\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `monitoring_interval` field will be omitted from the resulting object.\n  - `monitoring_interval_days` (`number`): Configuration of the snapshot analysis based monitoring pipeline running interval. The value indicates number of days. The default value is 1.\nIf both FeaturestoreMonitoringConfig.SnapshotAnalysis.monitoring_interval_days and [FeaturestoreMonitoringConfig.SnapshotAnalysis.monitoring_interval][] are set when creating/updating EntityTypes/Features, FeaturestoreMonitoringConfig.SnapshotAnalysis.monitoring_interval_days will be used. When `null`, the `monitoring_interval_days` field will be omitted from the resulting object.\n  - `staleness_days` (`number`): Customized export features time window for snapshot analysis. Unit is one day. The default value is 21 days. Minimum value is 1 day. Maximum value is 4000 days. When `null`, the `staleness_days` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `snapshot_analysis` sub block.\n', args=[]),
      new(
        disabled=null,
        monitoring_interval=null,
        monitoring_interval_days=null,
        staleness_days=null
      ):: std.prune(a={
        disabled: disabled,
        monitoring_interval: monitoring_interval,
        monitoring_interval_days: monitoring_interval_days,
        staleness_days: staleness_days,
      }),
    },
  },
  '#new':: d.fn(help="\n`google-beta.google_vertex_ai_featurestore_entitytype.new` injects a new `google-beta_google_vertex_ai_featurestore_entitytype` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_vertex_ai_featurestore_entitytype.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_vertex_ai_featurestore_entitytype` using the reference:\n\n    $._ref.google-beta_google_vertex_ai_featurestore_entitytype.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_vertex_ai_featurestore_entitytype.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `featurestore` (`string`): The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this EntityType. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the EntityType. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.\n  - `monitoring_config` (`list[obj]`): The default monitoring configuration for all Features under this EntityType.\n\nIf this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled. When `null`, the `monitoring_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_featurestore_entitytype.monitoring_config.new](#fn-googlevertexaifeaturestoreentitytypemonitoringconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_featurestore_entitytype.timeouts.new](#fn-googlevertexaifeaturestoreentitytypetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    featurestore,
    labels=null,
    monitoring_config=null,
    name=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_featurestore_entitytype',
    label=resourceLabel,
    attrs=self.newAttrs(
      featurestore=featurestore,
      labels=labels,
      monitoring_config=monitoring_config,
      name=name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_vertex_ai_featurestore_entitytype.newAttrs` constructs a new object with attributes and blocks configured for the `google_vertex_ai_featurestore_entitytype`\nTerraform resource.\n\nUnlike [google-beta.google_vertex_ai_featurestore_entitytype.new](#fn-googlevertexaifeaturestoreentitytypenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `featurestore` (`string`): The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this EntityType. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the EntityType. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.\n  - `monitoring_config` (`list[obj]`): The default monitoring configuration for all Features under this EntityType.\n\nIf this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled. When `null`, the `monitoring_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_featurestore_entitytype.monitoring_config.new](#fn-googlevertexaifeaturestoreentitytypemonitoringconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_featurestore_entitytype.timeouts.new](#fn-googlevertexaifeaturestoreentitytypetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_vertex_ai_featurestore_entitytype` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    featurestore,
    labels=null,
    monitoring_config=null,
    name=null,
    timeouts=null
  ):: std.prune(a={
    featurestore: featurestore,
    labels: labels,
    monitoring_config: monitoring_config,
    name: name,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_vertex_ai_featurestore_entitytype.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withFeaturestore':: d.fn(help='`google-beta.google_vertex_ai_featurestore_entitytype.withFeaturestore` constructs a mixin object that can be merged into the `google_vertex_ai_featurestore_entitytype`\nTerraform resource block to set or update the featurestore field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `featurestore` field.\n', args=[]),
  withFeaturestore(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          featurestore: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.google_vertex_ai_featurestore_entitytype.withLabels` constructs a mixin object that can be merged into the `google_vertex_ai_featurestore_entitytype`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMonitoringConfig':: d.fn(help='`google-beta.google_vertex_ai_featurestore_entitytype.withMonitoringConfig` constructs a mixin object that can be merged into the `google_vertex_ai_featurestore_entitytype`\nTerraform resource block to set or update the monitoring_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `monitoring_config` field.\n', args=[]),
  withMonitoringConfig(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          monitoring_config: value,
        },
      },
    },
  },
  '#withMonitoringConfigMixin':: d.fn(help='`google-beta.google_vertex_ai_featurestore_entitytype.withMonitoringConfigMixin` constructs a mixin object that can be merged into the `google_vertex_ai_featurestore_entitytype`\nTerraform resource block to set or update the monitoring_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.google_vertex_ai_featurestore_entitytype.withMonitoringConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `monitoring_config` field.\n', args=[]),
  withMonitoringConfigMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          monitoring_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.google_vertex_ai_featurestore_entitytype.withName` constructs a mixin object that can be merged into the `google_vertex_ai_featurestore_entitytype`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.google_vertex_ai_featurestore_entitytype.withTimeouts` constructs a mixin object that can be merged into the `google_vertex_ai_featurestore_entitytype`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.google_vertex_ai_featurestore_entitytype.withTimeoutsMixin` constructs a mixin object that can be merged into the `google_vertex_ai_featurestore_entitytype`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.google_vertex_ai_featurestore_entitytype.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
