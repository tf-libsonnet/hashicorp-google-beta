local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_dataflow_flex_template_job', url='', help='`google_dataflow_flex_template_job` represents the `google-beta_google_dataflow_flex_template_job` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_dataflow_flex_template_job.new` injects a new `google-beta_google_dataflow_flex_template_job` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_dataflow_flex_template_job.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_dataflow_flex_template_job` using the reference:\n\n    $._ref.google-beta_google_dataflow_flex_template_job.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_dataflow_flex_template_job.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `additional_experiments` (`list`): List of experiments that should be used by the job. An example value is [\u0026#34;enable_stackdriver_agent_metrics\u0026#34;]. When `null`, the `additional_experiments` field will be omitted from the resulting object.\n  - `autoscaling_algorithm` (`string`): The algorithm to use for autoscaling When `null`, the `autoscaling_algorithm` field will be omitted from the resulting object.\n  - `container_spec_gcs_path` (`string`): Set the `container_spec_gcs_path` field on the resulting resource block.\n  - `enable_streaming_engine` (`bool`): Indicates if the job should use the streaming engine feature. When `null`, the `enable_streaming_engine` field will be omitted from the resulting object.\n  - `ip_configuration` (`string`): The configuration for VM IPs. Options are \u0026#34;WORKER_IP_PUBLIC\u0026#34; or \u0026#34;WORKER_IP_PRIVATE\u0026#34;. When `null`, the `ip_configuration` field will be omitted from the resulting object.\n  - `kms_key_name` (`string`): The name for the Cloud KMS key for the job. Key format is: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): User labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. NOTE: Google-provided Dataflow templates often provide default labels that begin with goog-dataflow-provided. Unless explicitly set in config, these labels will be ignored to prevent diffs on re-apply. When `null`, the `labels` field will be omitted from the resulting object.\n  - `launcher_machine_type` (`string`): The machine type to use for launching the job. The default is n1-standard-1. When `null`, the `launcher_machine_type` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The machine type to use for the job. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `max_workers` (`number`): The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. When `null`, the `max_workers` field will be omitted from the resulting object.\n  - `name` (`string`): Set the `name` field on the resulting resource block.\n  - `network` (`string`): The network to which VMs will be assigned. If it is not provided, \u0026#34;default\u0026#34; will be used. When `null`, the `network` field will be omitted from the resulting object.\n  - `num_workers` (`number`): The initial number of Google Compute Engine instances for the job. When `null`, the `num_workers` field will be omitted from the resulting object.\n  - `on_delete` (`string`): Set the `on_delete` field on the resulting resource block. When `null`, the `on_delete` field will be omitted from the resulting object.\n  - `parameters` (`obj`): Set the `parameters` field on the resulting resource block. When `null`, the `parameters` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region in which the created job should run. When `null`, the `region` field will be omitted from the resulting object.\n  - `sdk_container_image` (`string`): Docker registry location of container image to use for the \u0026#39;worker harness. Default is the container for the version of the SDK. Note this field is only valid for portable pipelines. When `null`, the `sdk_container_image` field will be omitted from the resulting object.\n  - `service_account_email` (`string`): The Service Account email used to create the job. When `null`, the `service_account_email` field will be omitted from the resulting object.\n  - `skip_wait_on_job_termination` (`bool`): If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. When `null`, the `skip_wait_on_job_termination` field will be omitted from the resulting object.\n  - `staging_location` (`string`): The Cloud Storage path to use for staging files. Must be a valid Cloud Storage URL, beginning with gs://. When `null`, the `staging_location` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The subnetwork to which VMs will be assigned. Should be of the form \u0026#34;regions/REGION/subnetworks/SUBNETWORK\u0026#34;. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `temp_location` (`string`): The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://. When `null`, the `temp_location` field will be omitted from the resulting object.\n  - `transform_name_mapping` (`obj`): Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. When `null`, the `transform_name_mapping` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    container_spec_gcs_path,
    name,
    additional_experiments=null,
    autoscaling_algorithm=null,
    enable_streaming_engine=null,
    ip_configuration=null,
    kms_key_name=null,
    labels=null,
    launcher_machine_type=null,
    machine_type=null,
    max_workers=null,
    network=null,
    num_workers=null,
    on_delete=null,
    parameters=null,
    project=null,
    region=null,
    sdk_container_image=null,
    service_account_email=null,
    skip_wait_on_job_termination=null,
    staging_location=null,
    subnetwork=null,
    temp_location=null,
    transform_name_mapping=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataflow_flex_template_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      additional_experiments=additional_experiments,
      autoscaling_algorithm=autoscaling_algorithm,
      container_spec_gcs_path=container_spec_gcs_path,
      enable_streaming_engine=enable_streaming_engine,
      ip_configuration=ip_configuration,
      kms_key_name=kms_key_name,
      labels=labels,
      launcher_machine_type=launcher_machine_type,
      machine_type=machine_type,
      max_workers=max_workers,
      name=name,
      network=network,
      num_workers=num_workers,
      on_delete=on_delete,
      parameters=parameters,
      project=project,
      region=region,
      sdk_container_image=sdk_container_image,
      service_account_email=service_account_email,
      skip_wait_on_job_termination=skip_wait_on_job_termination,
      staging_location=staging_location,
      subnetwork=subnetwork,
      temp_location=temp_location,
      transform_name_mapping=transform_name_mapping
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_dataflow_flex_template_job.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataflow_flex_template_job`\nTerraform resource.\n\nUnlike [google-beta.google_dataflow_flex_template_job.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `additional_experiments` (`list`): List of experiments that should be used by the job. An example value is [&#34;enable_stackdriver_agent_metrics&#34;]. When `null`, the `additional_experiments` field will be omitted from the resulting object.\n  - `autoscaling_algorithm` (`string`): The algorithm to use for autoscaling When `null`, the `autoscaling_algorithm` field will be omitted from the resulting object.\n  - `container_spec_gcs_path` (`string`): Set the `container_spec_gcs_path` field on the resulting object.\n  - `enable_streaming_engine` (`bool`): Indicates if the job should use the streaming engine feature. When `null`, the `enable_streaming_engine` field will be omitted from the resulting object.\n  - `ip_configuration` (`string`): The configuration for VM IPs. Options are &#34;WORKER_IP_PUBLIC&#34; or &#34;WORKER_IP_PRIVATE&#34;. When `null`, the `ip_configuration` field will be omitted from the resulting object.\n  - `kms_key_name` (`string`): The name for the Cloud KMS key for the job. Key format is: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): User labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. NOTE: Google-provided Dataflow templates often provide default labels that begin with goog-dataflow-provided. Unless explicitly set in config, these labels will be ignored to prevent diffs on re-apply. When `null`, the `labels` field will be omitted from the resulting object.\n  - `launcher_machine_type` (`string`): The machine type to use for launching the job. The default is n1-standard-1. When `null`, the `launcher_machine_type` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The machine type to use for the job. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `max_workers` (`number`): The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. When `null`, the `max_workers` field will be omitted from the resulting object.\n  - `name` (`string`): Set the `name` field on the resulting object.\n  - `network` (`string`): The network to which VMs will be assigned. If it is not provided, &#34;default&#34; will be used. When `null`, the `network` field will be omitted from the resulting object.\n  - `num_workers` (`number`): The initial number of Google Compute Engine instances for the job. When `null`, the `num_workers` field will be omitted from the resulting object.\n  - `on_delete` (`string`): Set the `on_delete` field on the resulting object. When `null`, the `on_delete` field will be omitted from the resulting object.\n  - `parameters` (`obj`): Set the `parameters` field on the resulting object. When `null`, the `parameters` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region in which the created job should run. When `null`, the `region` field will be omitted from the resulting object.\n  - `sdk_container_image` (`string`): Docker registry location of container image to use for the &#39;worker harness. Default is the container for the version of the SDK. Note this field is only valid for portable pipelines. When `null`, the `sdk_container_image` field will be omitted from the resulting object.\n  - `service_account_email` (`string`): The Service Account email used to create the job. When `null`, the `service_account_email` field will be omitted from the resulting object.\n  - `skip_wait_on_job_termination` (`bool`): If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. When `null`, the `skip_wait_on_job_termination` field will be omitted from the resulting object.\n  - `staging_location` (`string`): The Cloud Storage path to use for staging files. Must be a valid Cloud Storage URL, beginning with gs://. When `null`, the `staging_location` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The subnetwork to which VMs will be assigned. Should be of the form &#34;regions/REGION/subnetworks/SUBNETWORK&#34;. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `temp_location` (`string`): The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://. When `null`, the `temp_location` field will be omitted from the resulting object.\n  - `transform_name_mapping` (`obj`): Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. When `null`, the `transform_name_mapping` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataflow_flex_template_job` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    container_spec_gcs_path,
    name,
    additional_experiments=null,
    autoscaling_algorithm=null,
    enable_streaming_engine=null,
    ip_configuration=null,
    kms_key_name=null,
    labels=null,
    launcher_machine_type=null,
    machine_type=null,
    max_workers=null,
    network=null,
    num_workers=null,
    on_delete=null,
    parameters=null,
    project=null,
    region=null,
    sdk_container_image=null,
    service_account_email=null,
    skip_wait_on_job_termination=null,
    staging_location=null,
    subnetwork=null,
    temp_location=null,
    transform_name_mapping=null
  ):: std.prune(a={
    additional_experiments: additional_experiments,
    autoscaling_algorithm: autoscaling_algorithm,
    container_spec_gcs_path: container_spec_gcs_path,
    enable_streaming_engine: enable_streaming_engine,
    ip_configuration: ip_configuration,
    kms_key_name: kms_key_name,
    labels: labels,
    launcher_machine_type: launcher_machine_type,
    machine_type: machine_type,
    max_workers: max_workers,
    name: name,
    network: network,
    num_workers: num_workers,
    on_delete: on_delete,
    parameters: parameters,
    project: project,
    region: region,
    sdk_container_image: sdk_container_image,
    service_account_email: service_account_email,
    skip_wait_on_job_termination: skip_wait_on_job_termination,
    staging_location: staging_location,
    subnetwork: subnetwork,
    temp_location: temp_location,
    transform_name_mapping: transform_name_mapping,
  }),
  '#withAdditionalExperiments':: d.fn(help='`google-beta.list.withAdditionalExperiments` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the additional_experiments field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `additional_experiments` field.\n', args=[]),
  withAdditionalExperiments(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          additional_experiments: value,
        },
      },
    },
  },
  '#withAutoscalingAlgorithm':: d.fn(help='`google-beta.string.withAutoscalingAlgorithm` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the autoscaling_algorithm field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `autoscaling_algorithm` field.\n', args=[]),
  withAutoscalingAlgorithm(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          autoscaling_algorithm: value,
        },
      },
    },
  },
  '#withContainerSpecGcsPath':: d.fn(help='`google-beta.string.withContainerSpecGcsPath` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the container_spec_gcs_path field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `container_spec_gcs_path` field.\n', args=[]),
  withContainerSpecGcsPath(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          container_spec_gcs_path: value,
        },
      },
    },
  },
  '#withEnableStreamingEngine':: d.fn(help='`google-beta.bool.withEnableStreamingEngine` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_streaming_engine field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_streaming_engine` field.\n', args=[]),
  withEnableStreamingEngine(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          enable_streaming_engine: value,
        },
      },
    },
  },
  '#withIpConfiguration':: d.fn(help='`google-beta.string.withIpConfiguration` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_configuration field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_configuration` field.\n', args=[]),
  withIpConfiguration(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          ip_configuration: value,
        },
      },
    },
  },
  '#withKmsKeyName':: d.fn(help='`google-beta.string.withKmsKeyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kms_key_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kms_key_name` field.\n', args=[]),
  withKmsKeyName(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLauncherMachineType':: d.fn(help='`google-beta.string.withLauncherMachineType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the launcher_machine_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `launcher_machine_type` field.\n', args=[]),
  withLauncherMachineType(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          launcher_machine_type: value,
        },
      },
    },
  },
  '#withMachineType':: d.fn(help='`google-beta.string.withMachineType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the machine_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `machine_type` field.\n', args=[]),
  withMachineType(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          machine_type: value,
        },
      },
    },
  },
  '#withMaxWorkers':: d.fn(help='`google-beta.number.withMaxWorkers` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the max_workers field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `max_workers` field.\n', args=[]),
  withMaxWorkers(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          max_workers: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google-beta.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNumWorkers':: d.fn(help='`google-beta.number.withNumWorkers` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the num_workers field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `num_workers` field.\n', args=[]),
  withNumWorkers(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          num_workers: value,
        },
      },
    },
  },
  '#withOnDelete':: d.fn(help='`google-beta.string.withOnDelete` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the on_delete field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `on_delete` field.\n', args=[]),
  withOnDelete(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          on_delete: value,
        },
      },
    },
  },
  '#withParameters':: d.fn(help='`google-beta.obj.withParameters` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the parameters field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `parameters` field.\n', args=[]),
  withParameters(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          parameters: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withSdkContainerImage':: d.fn(help='`google-beta.string.withSdkContainerImage` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the sdk_container_image field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `sdk_container_image` field.\n', args=[]),
  withSdkContainerImage(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          sdk_container_image: value,
        },
      },
    },
  },
  '#withServiceAccountEmail':: d.fn(help='`google-beta.string.withServiceAccountEmail` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account_email field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account_email` field.\n', args=[]),
  withServiceAccountEmail(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          service_account_email: value,
        },
      },
    },
  },
  '#withSkipWaitOnJobTermination':: d.fn(help='`google-beta.bool.withSkipWaitOnJobTermination` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the skip_wait_on_job_termination field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `skip_wait_on_job_termination` field.\n', args=[]),
  withSkipWaitOnJobTermination(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          skip_wait_on_job_termination: value,
        },
      },
    },
  },
  '#withStagingLocation':: d.fn(help='`google-beta.string.withStagingLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the staging_location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `staging_location` field.\n', args=[]),
  withStagingLocation(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          staging_location: value,
        },
      },
    },
  },
  '#withSubnetwork':: d.fn(help='`google-beta.string.withSubnetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnetwork field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetwork(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  '#withTempLocation':: d.fn(help='`google-beta.string.withTempLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the temp_location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `temp_location` field.\n', args=[]),
  withTempLocation(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          temp_location: value,
        },
      },
    },
  },
  '#withTransformNameMapping':: d.fn(help='`google-beta.obj.withTransformNameMapping` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the transform_name_mapping field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `transform_name_mapping` field.\n', args=[]),
  withTransformNameMapping(resourceLabel, value): {
    resource+: {
      google_dataflow_flex_template_job+: {
        [resourceLabel]+: {
          transform_name_mapping: value,
        },
      },
    },
  },
}
