local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_dataflow_flex_template_job', url='', help='`google_dataflow_flex_template_job` represents the `google-beta_google_dataflow_flex_template_job` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_dataflow_flex_template_job.new` injects a new `google-beta_google_dataflow_flex_template_job` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_dataflow_flex_template_job.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_dataflow_flex_template_job` using the reference:\n\n    $._ref.google-beta_google_dataflow_flex_template_job.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_dataflow_flex_template_job.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `container_spec_gcs_path` (`string`): Set the `container_spec_gcs_path` field on the resulting resource block.\n  - `labels` (`obj`): Set the `labels` field on the resulting resource block. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Set the `name` field on the resulting resource block.\n  - `on_delete` (`string`): Set the `on_delete` field on the resulting resource block. When `null`, the `on_delete` field will be omitted from the resulting object.\n  - `parameters` (`obj`): Set the `parameters` field on the resulting resource block. When `null`, the `parameters` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region in which the created job should run. When `null`, the `region` field will be omitted from the resulting object.\n  - `skip_wait_on_job_termination` (`bool`): If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. When `null`, the `skip_wait_on_job_termination` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
  '#newAttrs':: d.fn(help='\n`google-beta.google_dataflow_flex_template_job.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataflow_flex_template_job`\nTerraform resource.\n\nUnlike [google-beta.google_dataflow_flex_template_job.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `container_spec_gcs_path` (`string`): Set the `container_spec_gcs_path` field on the resulting object.\n  - `labels` (`obj`): Set the `labels` field on the resulting object. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Set the `name` field on the resulting object.\n  - `on_delete` (`string`): Set the `on_delete` field on the resulting object. When `null`, the `on_delete` field will be omitted from the resulting object.\n  - `parameters` (`obj`): Set the `parameters` field on the resulting object. When `null`, the `parameters` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region in which the created job should run. When `null`, the `region` field will be omitted from the resulting object.\n  - `skip_wait_on_job_termination` (`bool`): If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. When `null`, the `skip_wait_on_job_termination` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataflow_flex_template_job` resource into the root Terraform configuration.\n', args=[]),
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
}
