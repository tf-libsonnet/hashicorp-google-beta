local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_cloud_run_service', url='', help='`google_cloud_run_service` represents the `google-beta_google_cloud_run_service` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  metadata:: {
    '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.metadata.new` constructs a new object with attributes and blocks configured for the `metadata`\nTerraform sub block.\n\n\n\n**Args**:\n  - `annotations` (`obj`): Annotations is a key value map stored with a resource that\nmay be set by external tools to store and retrieve arbitrary metadata. More\ninfo: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations\n\n**Note**: The Cloud Run API may add additional annotations that were not provided in your config.\nIf terraform plan shows a diff where a server-side annotation is added, you can add it to your config\nor apply the lifecycle.ignore_changes rule to the metadata.0.annotations field.\n\nAnnotations with &#39;run.googleapis.com/&#39; and &#39;autoscaling.knative.dev&#39; are restricted. Use the following annotation\nkeys to configure features on a Service:\n\n- &#39;run.googleapis.com/binary-authorization-breakglass&#39; sets the [Binary Authorization breakglass](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--breakglass).\n- &#39;run.googleapis.com/binary-authorization&#39; sets the [Binary Authorization](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--binary-authorization).\n- &#39;run.googleapis.com/client-name&#39; sets the client name calling the Cloud Run API.\n- &#39;run.googleapis.com/custom-audiences&#39; sets the [custom audiences](https://cloud.google.com/sdk/gcloud/reference/alpha/run/deploy#--add-custom-audiences)\n  that can be used in the audience field of ID token for authenticated requests.\n- &#39;run.googleapis.com/description&#39; sets a user defined description for the Service.\n- &#39;run.googleapis.com/ingress&#39; sets the [ingress settings](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--ingress)\n  for the Service. For example, &#39;&#34;run.googleapis.com/ingress&#34; = &#34;all&#34;&#39;.\n- &#39;run.googleapis.com/launch-stage&#39; sets the [launch stage](https://cloud.google.com/run/docs/troubleshooting#launch-stage-validation)\n  when a preview feature is used. For example, &#39;&#34;run.googleapis.com/launch-stage&#34;: &#34;BETA&#34;&#39;\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `labels` (`obj`): Map of string keys and values that can be used to organize and categorize\n(scope and select) objects. May match selectors of replication controllers\nand routes.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `namespace` (`string`): In Cloud Run the namespace must be equal to either the\nproject ID or project number. When `null`, the `namespace` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `metadata` sub block.\n', args=[]),
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
  '#new':: d.fn(help="\n`google-beta.google_cloud_run_service.new` injects a new `google-beta_google_cloud_run_service` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_cloud_run_service.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_cloud_run_service` using the reference:\n\n    $._ref.google-beta_google_cloud_run_service.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_cloud_run_service.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `autogenerate_revision_name` (`bool`): If set to \u0026#39;true\u0026#39;, the revision name (template.metadata.name) will be omitted and\nautogenerated by Cloud Run. This cannot be set to \u0026#39;true\u0026#39; while \u0026#39;template.metadata.name\u0026#39;\nis also set.\n(For legacy support, if \u0026#39;template.metadata.name\u0026#39; is unset in state while\nthis field is set to false, the revision name will still autogenerate.) When `null`, the `autogenerate_revision_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the cloud run instance. eg us-central1\n  - `name` (`string`): Name must be unique within a Google Cloud project and region.\nIs required when creating resources. Name is primarily intended\nfor creation idempotence and configuration definition. Cannot be updated.\nMore info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `metadata` (`list[obj]`): Metadata associated with this Service, including name, namespace, labels,\nand annotations. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.metadata.new](#fn-metadatanew) constructor.\n  - `template` (`list[obj]`): template holds the latest specification for the Revision to\nbe stamped out. The template references the container image, and may also\ninclude labels and annotations that should be attached to the Revision.\nTo correlate a Revision, and/or to force a Revision to be created when the\nspec doesn\u0026#39;t otherwise change, a nonce label may be provided in the\ntemplate metadata. For more details, see:\nhttps://github.com/knative/serving/blob/main/docs/client-conventions.md#associate-modifications-with-revisions\n\nCloud Run does not currently support referencing a build that is\nresponsible for materializing the container image from source. When `null`, the `template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.new](#fn-templatenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.timeouts.new](#fn-timeoutsnew) constructor.\n  - `traffic` (`list[obj]`): Traffic specifies how to distribute traffic over a collection of Knative Revisions\nand Configurations When `null`, the `traffic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.traffic.new](#fn-trafficnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
  '#newAttrs':: d.fn(help='\n`google-beta.google_cloud_run_service.newAttrs` constructs a new object with attributes and blocks configured for the `google_cloud_run_service`\nTerraform resource.\n\nUnlike [google-beta.google_cloud_run_service.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `autogenerate_revision_name` (`bool`): If set to &#39;true&#39;, the revision name (template.metadata.name) will be omitted and\nautogenerated by Cloud Run. This cannot be set to &#39;true&#39; while &#39;template.metadata.name&#39;\nis also set.\n(For legacy support, if &#39;template.metadata.name&#39; is unset in state while\nthis field is set to false, the revision name will still autogenerate.) When `null`, the `autogenerate_revision_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the cloud run instance. eg us-central1\n  - `name` (`string`): Name must be unique within a Google Cloud project and region.\nIs required when creating resources. Name is primarily intended\nfor creation idempotence and configuration definition. Cannot be updated.\nMore info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `metadata` (`list[obj]`): Metadata associated with this Service, including name, namespace, labels,\nand annotations. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.metadata.new](#fn-metadatanew) constructor.\n  - `template` (`list[obj]`): template holds the latest specification for the Revision to\nbe stamped out. The template references the container image, and may also\ninclude labels and annotations that should be attached to the Revision.\nTo correlate a Revision, and/or to force a Revision to be created when the\nspec doesn&#39;t otherwise change, a nonce label may be provided in the\ntemplate metadata. For more details, see:\nhttps://github.com/knative/serving/blob/main/docs/client-conventions.md#associate-modifications-with-revisions\n\nCloud Run does not currently support referencing a build that is\nresponsible for materializing the container image from source. When `null`, the `template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.new](#fn-templatenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.timeouts.new](#fn-timeoutsnew) constructor.\n  - `traffic` (`list[obj]`): Traffic specifies how to distribute traffic over a collection of Knative Revisions\nand Configurations When `null`, the `traffic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.traffic.new](#fn-trafficnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_cloud_run_service` resource into the root Terraform configuration.\n', args=[]),
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
      '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.metadata.new` constructs a new object with attributes and blocks configured for the `metadata`\nTerraform sub block.\n\n\n\n**Args**:\n  - `annotations` (`obj`): Annotations is a key value map stored with a resource that\nmay be set by external tools to store and retrieve arbitrary metadata. More\ninfo: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations\n\n**Note**: The Cloud Run API may add additional annotations that were not provided in your config.\nIf terraform plan shows a diff where a server-side annotation is added, you can add it to your config\nor apply the lifecycle.ignore_changes rule to the metadata.0.annotations field.\n\nAnnotations with &#39;run.googleapis.com/&#39; and &#39;autoscaling.knative.dev&#39; are restricted. Use the following annotation\nkeys to configure features on a Revision template:\n\n- &#39;autoscaling.knative.dev/maxScale&#39; sets the [maximum number of container\n  instances](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--max-instances) of the Revision to run.\n- &#39;autoscaling.knative.dev/minScale&#39; sets the [minimum number of container\n  instances](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--min-instances) of the Revision to run.\n- &#39;run.googleapis.com/client-name&#39; sets the client name calling the Cloud Run API.\n- &#39;run.googleapis.com/cloudsql-instances&#39; sets the [Cloud SQL\n  instances](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--add-cloudsql-instances) the Revision connects to.\n- &#39;run.googleapis.com/cpu-throttling&#39; sets whether to throttle the CPU when the container is not actively serving\n  requests. See https://cloud.google.com/sdk/gcloud/reference/run/deploy#--[no-]cpu-throttling.\n- &#39;run.googleapis.com/encryption-key-shutdown-hours&#39; sets the number of hours to wait before an automatic shutdown\n  server after CMEK key revocation is detected.\n- &#39;run.googleapis.com/encryption-key&#39; sets the [CMEK key](https://cloud.google.com/run/docs/securing/using-cmek)\n  reference to encrypt the container with.\n- &#39;run.googleapis.com/execution-environment&#39; sets the [execution\n  environment](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--execution-environment)\n  where the application will run.\n- &#39;run.googleapis.com/post-key-revocation-action-type&#39; sets the\n  [action type](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--post-key-revocation-action-type)\n  after CMEK key revocation.\n- &#39;run.googleapis.com/secrets&#39; sets a list of key-value pairs to set as\n  [secrets](https://cloud.google.com/run/docs/configuring/secrets#yaml).\n- &#39;run.googleapis.com/sessionAffinity&#39; sets whether to enable\n  [session affinity](https://cloud.google.com/sdk/gcloud/reference/beta/run/deploy#--[no-]session-affinity)\n  for connections to the Revision.\n- &#39;run.googleapis.com/startup-cpu-boost&#39; sets whether to allocate extra CPU to containers on startup.\n  See https://cloud.google.com/sdk/gcloud/reference/run/deploy#--[no-]cpu-boost.\n- &#39;run.googleapis.com/vpc-access-connector&#39; sets a [VPC connector](https://cloud.google.com/run/docs/configuring/connecting-vpc#terraform_1)\n  for the Revision.\n- &#39;run.googleapis.com/vpc-access-egress&#39; sets the outbound traffic to send through the VPC connector for this resource.\n  See https://cloud.google.com/sdk/gcloud/reference/run/deploy#--vpc-egress. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `labels` (`obj`): Map of string keys and values that can be used to organize and categorize\n(scope and select) objects. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name must be unique within a Google Cloud project and region.\nIs required when creating resources. Name is primarily intended\nfor creation idempotence and configuration definition. Cannot be updated. When `null`, the `name` field will be omitted from the resulting object.\n  - `namespace` (`string`): In Cloud Run the namespace must be equal to either the\nproject ID or project number. It will default to the resource&#39;s project. When `null`, the `namespace` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `metadata` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.new` constructs a new object with attributes and blocks configured for the `template`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`list[obj]`): Optional metadata for this Revision, including labels and annotations.\nName will be generated by the Configuration. To set minimum instances\nfor this revision, use the &#34;autoscaling.knative.dev/minScale&#34; annotation\nkey. To set maximum instances for this revision, use the\n&#34;autoscaling.knative.dev/maxScale&#34; annotation key. To set Cloud SQL\nconnections for the revision, use the &#34;run.googleapis.com/cloudsql-instances&#34;\nannotation key. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.metadata.new](#fn-templatemetadatanew) constructor.\n  - `spec` (`list[obj]`): RevisionSpec holds the desired state of the Revision (from the client). When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.new](#fn-templatespecnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `template` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.env.new` constructs a new object with attributes and blocks configured for the `env`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the environment variable. When `null`, the `name` field will be omitted from the resulting object.\n  - `value` (`string`): Defaults to &#34;&#34;. When `null`, the `value` field will be omitted from the resulting object.\n  - `value_from` (`list[obj]`): Source for the environment variable&#39;s value. Only supports secret_key_ref. When `null`, the `value_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.env.value_from.new](#fn-templatetemplatespeccontainersvalue_fromnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `env` sub block.\n', args=[]),
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
            '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.env.value_from.new` constructs a new object with attributes and blocks configured for the `value_from`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_key_ref` (`list[obj]`): Selects a key (version) of a secret in Secret Manager. When `null`, the `secret_key_ref` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.env.value_from.secret_key_ref.new](#fn-templatetemplatespeccontainersenvsecret_key_refnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `value_from` sub block.\n', args=[]),
            new(
              secret_key_ref=null
            ):: std.prune(a={
              secret_key_ref: secret_key_ref,
            }),
            secret_key_ref:: {
              '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.env.value_from.secret_key_ref.new` constructs a new object with attributes and blocks configured for the `secret_key_ref`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): A Cloud Secret Manager secret version. Must be &#39;latest&#39; for the latest\nversion or an integer for a specific version.\n  - `name` (`string`): The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project.\nIf the secret is in another project, you must define an alias.\nAn alias definition has the form: :projects/{project-id|project-number}/secrets/.\nIf multiple alias definitions are needed, they must be separated by commas.\nThe alias definitions must be set on the run.googleapis.com/secrets annotation.\n\n**Returns**:\n  - An attribute object that represents the `secret_key_ref` sub block.\n', args=[]),
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
              '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.env_from.config_map_ref.local_object_reference.new` constructs a new object with attributes and blocks configured for the `local_object_reference`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the referent.\n\n**Returns**:\n  - An attribute object that represents the `local_object_reference` sub block.\n', args=[]),
              new(
                name
              ):: std.prune(a={
                name: name,
              }),
            },
            '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.env_from.config_map_ref.new` constructs a new object with attributes and blocks configured for the `config_map_ref`\nTerraform sub block.\n\n\n\n**Args**:\n  - `optional` (`bool`): Specify whether the ConfigMap must be defined When `null`, the `optional` field will be omitted from the resulting object.\n  - `local_object_reference` (`list[obj]`): The ConfigMap to select from. When `null`, the `local_object_reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.env_from.config_map_ref.local_object_reference.new](#fn-templatetemplatespeccontainersenv_fromlocal_object_referencenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config_map_ref` sub block.\n', args=[]),
            new(
              local_object_reference=null,
              optional=null
            ):: std.prune(a={
              local_object_reference: local_object_reference,
              optional: optional,
            }),
          },
          '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.env_from.new` constructs a new object with attributes and blocks configured for the `env_from`\nTerraform sub block.\n\n\n\n**Args**:\n  - `prefix` (`string`): An optional identifier to prepend to each key in the ConfigMap. When `null`, the `prefix` field will be omitted from the resulting object.\n  - `config_map_ref` (`list[obj]`): The ConfigMap to select from. When `null`, the `config_map_ref` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.env_from.config_map_ref.new](#fn-templatetemplatespeccontainersconfig_map_refnew) constructor.\n  - `secret_ref` (`list[obj]`): The Secret to select from. When `null`, the `secret_ref` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.env_from.secret_ref.new](#fn-templatetemplatespeccontainerssecret_refnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `env_from` sub block.\n', args=[]),
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
              '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.env_from.secret_ref.local_object_reference.new` constructs a new object with attributes and blocks configured for the `local_object_reference`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the referent.\n\n**Returns**:\n  - An attribute object that represents the `local_object_reference` sub block.\n', args=[]),
              new(
                name
              ):: std.prune(a={
                name: name,
              }),
            },
            '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.env_from.secret_ref.new` constructs a new object with attributes and blocks configured for the `secret_ref`\nTerraform sub block.\n\n\n\n**Args**:\n  - `optional` (`bool`): Specify whether the Secret must be defined When `null`, the `optional` field will be omitted from the resulting object.\n  - `local_object_reference` (`list[obj]`): The Secret to select from. When `null`, the `local_object_reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.env_from.secret_ref.local_object_reference.new](#fn-templatetemplatespeccontainersenv_fromlocal_object_referencenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `secret_ref` sub block.\n', args=[]),
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
            '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.liveness_probe.grpc.new` constructs a new object with attributes and blocks configured for the `grpc`\nTerraform sub block.\n\n\n\n**Args**:\n  - `port` (`number`): Port number to access on the container. Number must be in the range 1 to 65535.\nIf not specified, defaults to the same value as container.ports[0].containerPort. When `null`, the `port` field will be omitted from the resulting object.\n  - `service` (`string`): The name of the service to place in the gRPC HealthCheckRequest\n(see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).\nIf this is not specified, the default behavior is defined by gRPC. When `null`, the `service` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `grpc` sub block.\n', args=[]),
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
              '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.liveness_probe.http_get.http_headers.new` constructs a new object with attributes and blocks configured for the `http_headers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The header field name.\n  - `value` (`string`): The header field value. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `http_headers` sub block.\n', args=[]),
              new(
                name,
                value=null
              ):: std.prune(a={
                name: name,
                value: value,
              }),
            },
            '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.liveness_probe.http_get.new` constructs a new object with attributes and blocks configured for the `http_get`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): Path to access on the HTTP server. If set, it should not be empty string. When `null`, the `path` field will be omitted from the resulting object.\n  - `port` (`number`): Port number to access on the container. Number must be in the range 1 to 65535.\nIf not specified, defaults to the same value as container.ports[0].containerPort. When `null`, the `port` field will be omitted from the resulting object.\n  - `http_headers` (`list[obj]`): Custom headers to set in the request. HTTP allows repeated headers. When `null`, the `http_headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.liveness_probe.http_get.http_headers.new](#fn-templatetemplatespeccontainersliveness_probehttp_headersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `http_get` sub block.\n', args=[]),
            new(
              http_headers=null,
              path=null,
              port=null
            ):: std.prune(a={
              http_headers: http_headers,
              path: path,
              port: port,
            }),
          },
          '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.liveness_probe.new` constructs a new object with attributes and blocks configured for the `liveness_probe`\nTerraform sub block.\n\n\n\n**Args**:\n  - `failure_threshold` (`number`): Minimum consecutive failures for the probe to be considered failed after\nhaving succeeded. Defaults to 3. Minimum value is 1. When `null`, the `failure_threshold` field will be omitted from the resulting object.\n  - `initial_delay_seconds` (`number`): Number of seconds after the container has started before the probe is\ninitiated.\nDefaults to 0 seconds. Minimum value is 0. Maximum value is 3600. When `null`, the `initial_delay_seconds` field will be omitted from the resulting object.\n  - `period_seconds` (`number`): How often (in seconds) to perform the probe.\nDefault to 10 seconds. Minimum value is 1. Maximum value is 3600. When `null`, the `period_seconds` field will be omitted from the resulting object.\n  - `timeout_seconds` (`number`): Number of seconds after which the probe times out.\nDefaults to 1 second. Minimum value is 1. Maximum value is 3600.\nMust be smaller than period_seconds. When `null`, the `timeout_seconds` field will be omitted from the resulting object.\n  - `grpc` (`list[obj]`): GRPC specifies an action involving a GRPC port. When `null`, the `grpc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.liveness_probe.grpc.new](#fn-templatetemplatespeccontainersgrpcnew) constructor.\n  - `http_get` (`list[obj]`): HttpGet specifies the http request to perform. When `null`, the `http_get` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.liveness_probe.http_get.new](#fn-templatetemplatespeccontainershttp_getnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `liveness_probe` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.new` constructs a new object with attributes and blocks configured for the `containers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `args` (`list`): Arguments to the entrypoint.\nThe docker image&#39;s CMD is used if this is not provided. When `null`, the `args` field will be omitted from the resulting object.\n  - `command` (`list`): Entrypoint array. Not executed within a shell.\nThe docker image&#39;s ENTRYPOINT is used if this is not provided. When `null`, the `command` field will be omitted from the resulting object.\n  - `image` (`string`): Docker image name. This is most often a reference to a container located\nin the container registry, such as gcr.io/cloudrun/hello\n  - `name` (`string`): Name of the container When `null`, the `name` field will be omitted from the resulting object.\n  - `working_dir` (`string`): Container&#39;s working directory.\nIf not specified, the container runtime&#39;s default will be used, which\nmight be configured in the container image. When `null`, the `working_dir` field will be omitted from the resulting object.\n  - `env` (`list[obj]`): List of environment variables to set in the container. When `null`, the `env` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.env.new](#fn-templatetemplatespecenvnew) constructor.\n  - `env_from` (`list[obj]`): List of sources to populate environment variables in the container.\nAll invalid keys will be reported as an event when the container is starting.\nWhen a key exists in multiple sources, the value associated with the last source will\ntake precedence. Values defined by an Env with a duplicate key will take\nprecedence. When `null`, the `env_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.env_from.new](#fn-templatetemplatespecenv_fromnew) constructor.\n  - `liveness_probe` (`list[obj]`): Periodic probe of container liveness. Container will be restarted if the probe fails. When `null`, the `liveness_probe` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.liveness_probe.new](#fn-templatetemplatespecliveness_probenew) constructor.\n  - `ports` (`list[obj]`): List of open ports in the container. When `null`, the `ports` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.ports.new](#fn-templatetemplatespecportsnew) constructor.\n  - `resources` (`list[obj]`): Compute Resources required by this container. Used to set values such as max memory When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.resources.new](#fn-templatetemplatespecresourcesnew) constructor.\n  - `startup_probe` (`list[obj]`): Startup probe of application within the container.\nAll other probes are disabled if a startup probe is provided, until it\nsucceeds. Container will not be added to service endpoints if the probe fails. When `null`, the `startup_probe` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.startup_probe.new](#fn-templatetemplatespecstartup_probenew) constructor.\n  - `volume_mounts` (`list[obj]`): Volume to mount into the container&#39;s filesystem.\nOnly supports SecretVolumeSources. When `null`, the `volume_mounts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.volume_mounts.new](#fn-templatetemplatespecvolume_mountsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `containers` sub block.\n', args=[]),
        new(
          image,
          args=null,
          command=null,
          env=null,
          env_from=null,
          liveness_probe=null,
          name=null,
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
          name: name,
          ports: ports,
          resources: resources,
          startup_probe: startup_probe,
          volume_mounts: volume_mounts,
          working_dir: working_dir,
        }),
        ports:: {
          '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.ports.new` constructs a new object with attributes and blocks configured for the `ports`\nTerraform sub block.\n\n\n\n**Args**:\n  - `container_port` (`number`): Port number the container listens on. This must be a valid port number (between 1 and 65535). Defaults to &#34;8080&#34;. When `null`, the `container_port` field will be omitted from the resulting object.\n  - `name` (`string`): If specified, used to specify which protocol to use. Allowed values are &#34;http1&#34; (HTTP/1) and &#34;h2c&#34; (HTTP/2 end-to-end). Defaults to &#34;http1&#34;. When `null`, the `name` field will be omitted from the resulting object.\n  - `protocol` (`string`): Protocol for port. Must be &#34;TCP&#34;. Defaults to &#34;TCP&#34;. When `null`, the `protocol` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ports` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.resources.new` constructs a new object with attributes and blocks configured for the `resources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `limits` (`obj`): Limits describes the maximum amount of compute resources allowed.\nThe values of the map is string form of the &#39;quantity&#39; k8s type:\nhttps://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go When `null`, the `limits` field will be omitted from the resulting object.\n  - `requests` (`obj`): Requests describes the minimum amount of compute resources required.\nIf Requests is omitted for a container, it defaults to Limits if that is\nexplicitly specified, otherwise to an implementation-defined value.\nThe values of the map is string form of the &#39;quantity&#39; k8s type:\nhttps://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go When `null`, the `requests` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `resources` sub block.\n', args=[]),
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
            '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.startup_probe.grpc.new` constructs a new object with attributes and blocks configured for the `grpc`\nTerraform sub block.\n\n\n\n**Args**:\n  - `port` (`number`): Port number to access on the container. Number must be in the range 1 to 65535.\nIf not specified, defaults to the same value as container.ports[0].containerPort. When `null`, the `port` field will be omitted from the resulting object.\n  - `service` (`string`): The name of the service to place in the gRPC HealthCheckRequest\n(see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).\nIf this is not specified, the default behavior is defined by gRPC. When `null`, the `service` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `grpc` sub block.\n', args=[]),
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
              '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.startup_probe.http_get.http_headers.new` constructs a new object with attributes and blocks configured for the `http_headers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The header field name.\n  - `value` (`string`): The header field value. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `http_headers` sub block.\n', args=[]),
              new(
                name,
                value=null
              ):: std.prune(a={
                name: name,
                value: value,
              }),
            },
            '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.startup_probe.http_get.new` constructs a new object with attributes and blocks configured for the `http_get`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): Path to access on the HTTP server. If set, it should not be empty string. When `null`, the `path` field will be omitted from the resulting object.\n  - `port` (`number`): Port number to access on the container. Number must be in the range 1 to 65535.\nIf not specified, defaults to the same value as container.ports[0].containerPort. When `null`, the `port` field will be omitted from the resulting object.\n  - `http_headers` (`list[obj]`): Custom headers to set in the request. HTTP allows repeated headers. When `null`, the `http_headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.startup_probe.http_get.http_headers.new](#fn-templatetemplatespeccontainersstartup_probehttp_headersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `http_get` sub block.\n', args=[]),
            new(
              http_headers=null,
              path=null,
              port=null
            ):: std.prune(a={
              http_headers: http_headers,
              path: path,
              port: port,
            }),
          },
          '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.startup_probe.new` constructs a new object with attributes and blocks configured for the `startup_probe`\nTerraform sub block.\n\n\n\n**Args**:\n  - `failure_threshold` (`number`): Minimum consecutive failures for the probe to be considered failed after\nhaving succeeded. Defaults to 3. Minimum value is 1. When `null`, the `failure_threshold` field will be omitted from the resulting object.\n  - `initial_delay_seconds` (`number`): Number of seconds after the container has started before the probe is\ninitiated.\nDefaults to 0 seconds. Minimum value is 0. Maximum value is 240. When `null`, the `initial_delay_seconds` field will be omitted from the resulting object.\n  - `period_seconds` (`number`): How often (in seconds) to perform the probe.\nDefault to 10 seconds. Minimum value is 1. Maximum value is 240. When `null`, the `period_seconds` field will be omitted from the resulting object.\n  - `timeout_seconds` (`number`): Number of seconds after which the probe times out.\nDefaults to 1 second. Minimum value is 1. Maximum value is 3600.\nMust be smaller than periodSeconds. When `null`, the `timeout_seconds` field will be omitted from the resulting object.\n  - `grpc` (`list[obj]`): GRPC specifies an action involving a GRPC port. When `null`, the `grpc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.startup_probe.grpc.new](#fn-templatetemplatespeccontainersgrpcnew) constructor.\n  - `http_get` (`list[obj]`): HttpGet specifies the http request to perform. When `null`, the `http_get` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.startup_probe.http_get.new](#fn-templatetemplatespeccontainershttp_getnew) constructor.\n  - `tcp_socket` (`list[obj]`): TcpSocket specifies an action involving a TCP port. When `null`, the `tcp_socket` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.startup_probe.tcp_socket.new](#fn-templatetemplatespeccontainerstcp_socketnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `startup_probe` sub block.\n', args=[]),
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
            '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.startup_probe.tcp_socket.new` constructs a new object with attributes and blocks configured for the `tcp_socket`\nTerraform sub block.\n\n\n\n**Args**:\n  - `port` (`number`): Port number to access on the container. Number must be in the range 1 to 65535.\nIf not specified, defaults to the same value as container.ports[0].containerPort. When `null`, the `port` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `tcp_socket` sub block.\n', args=[]),
            new(
              port=null
            ):: std.prune(a={
              port: port,
            }),
          },
        },
        volume_mounts:: {
          '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.containers.volume_mounts.new` constructs a new object with attributes and blocks configured for the `volume_mounts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mount_path` (`string`): Path within the container at which the volume should be mounted.  Must\nnot contain &#39;:&#39;.\n  - `name` (`string`): This must match the Name of a Volume.\n\n**Returns**:\n  - An attribute object that represents the `volume_mounts` sub block.\n', args=[]),
          new(
            mount_path,
            name
          ):: std.prune(a={
            mount_path: mount_path,
            name: name,
          }),
        },
      },
      '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.new` constructs a new object with attributes and blocks configured for the `spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `container_concurrency` (`number`): ContainerConcurrency specifies the maximum allowed in-flight (concurrent)\nrequests per container of the Revision. Values are:\n- &#39;0&#39; thread-safe, the system should manage the max concurrency. This is\n    the default value.\n- &#39;1&#39; not-thread-safe. Single concurrency\n- &#39;2-N&#39; thread-safe, max concurrency of N When `null`, the `container_concurrency` field will be omitted from the resulting object.\n  - `service_account_name` (`string`): Email address of the IAM service account associated with the revision of the\nservice. The service account represents the identity of the running revision,\nand determines what permissions the revision has. If not provided, the revision\nwill use the project&#39;s default service account. When `null`, the `service_account_name` field will be omitted from the resulting object.\n  - `timeout_seconds` (`number`): TimeoutSeconds holds the max duration the instance is allowed for responding to a request. When `null`, the `timeout_seconds` field will be omitted from the resulting object.\n  - `containers` (`list[obj]`): Containers defines the unit of execution for this Revision. When `null`, the `containers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.containers.new](#fn-templatetemplatecontainersnew) constructor.\n  - `volumes` (`list[obj]`): Volume represents a named volume in a container. When `null`, the `volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.volumes.new](#fn-templatetemplatevolumesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `spec` sub block.\n', args=[]),
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
        csi:: {
          '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.volumes.csi.new` constructs a new object with attributes and blocks configured for the `csi`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver` (`string`): Unique name representing the type of file system to be created. Cloud Run supports the following values:\n  * gcsfuse.run.googleapis.com: Mount a Google Cloud Storage bucket using GCSFuse. This driver requires the\n    run.googleapis.com/execution-environment annotation to be set to &#34;gen2&#34; and\n    run.googleapis.com/launch-stage set to &#34;BETA&#34; or &#34;ALPHA&#34;.\n  - `read_only` (`bool`): If true, all mounts created from this volume will be read-only. When `null`, the `read_only` field will be omitted from the resulting object.\n  - `volume_attributes` (`obj`): Driver-specific attributes. The following options are supported for available drivers:\n  * gcsfuse.run.googleapis.com\n    * bucketName: The name of the Cloud Storage Bucket that backs this volume. The Cloud Run Service identity must have access to this bucket. When `null`, the `volume_attributes` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `csi` sub block.\n', args=[]),
          new(
            driver,
            read_only=null,
            volume_attributes=null
          ):: std.prune(a={
            driver: driver,
            read_only: read_only,
            volume_attributes: volume_attributes,
          }),
        },
        empty_dir:: {
          '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.volumes.empty_dir.new` constructs a new object with attributes and blocks configured for the `empty_dir`\nTerraform sub block.\n\n\n\n**Args**:\n  - `medium` (`string`): The medium on which the data is stored. The default is &#34;&#34; which means to use the node&#39;s default medium. Must be an empty string (default) or Memory. When `null`, the `medium` field will be omitted from the resulting object.\n  - `size_limit` (`string`): Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. This field&#39;s values are of the &#39;Quantity&#39; k8s type: https://kubernetes.io/docs/reference/kubernetes-api/common-definitions/quantity/. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir. When `null`, the `size_limit` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `empty_dir` sub block.\n', args=[]),
          new(
            medium=null,
            size_limit=null
          ):: std.prune(a={
            medium: medium,
            size_limit: size_limit,
          }),
        },
        '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.volumes.new` constructs a new object with attributes and blocks configured for the `volumes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Volume&#39;s name.\n  - `csi` (`list[obj]`): A filesystem specified by the Container Storage Interface (CSI). When `null`, the `csi` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.volumes.csi.new](#fn-templatetemplatespeccsinew) constructor.\n  - `empty_dir` (`list[obj]`): Ephemeral storage which can be backed by real disks (HD, SSD), network storage or memory (i.e. tmpfs). For now only in memory (tmpfs) is supported. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs). When `null`, the `empty_dir` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.volumes.empty_dir.new](#fn-templatetemplatespecempty_dirnew) constructor.\n  - `secret` (`list[obj]`): The secret&#39;s value will be presented as the content of a file whose\nname is defined in the item path. If no items are defined, the name of\nthe file is the secret_name. When `null`, the `secret` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.volumes.secret.new](#fn-templatetemplatespecsecretnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `volumes` sub block.\n', args=[]),
        new(
          name,
          csi=null,
          empty_dir=null,
          secret=null
        ):: std.prune(a={
          csi: csi,
          empty_dir: empty_dir,
          name: name,
          secret: secret,
        }),
        secret:: {
          items:: {
            '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.volumes.secret.items.new` constructs a new object with attributes and blocks configured for the `items`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): The Cloud Secret Manager secret version.\nCan be &#39;latest&#39; for the latest value or an integer for a specific version.\n  - `mode` (`number`): Mode bits to use on this file, must be a value between 0000 and 0777. If\nnot specified, the volume defaultMode will be used. This might be in\nconflict with other options that affect the file mode, like fsGroup, and\nthe result can be other mode bits set. When `null`, the `mode` field will be omitted from the resulting object.\n  - `path` (`string`): The relative path of the file to map the key to.\nMay not be an absolute path.\nMay not contain the path element &#39;..&#39;.\nMay not start with the string &#39;..&#39;.\n\n**Returns**:\n  - An attribute object that represents the `items` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.template.spec.volumes.secret.new` constructs a new object with attributes and blocks configured for the `secret`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default_mode` (`number`): Mode bits to use on created files by default. Must be a value between 0000\nand 0777. Defaults to 0644. Directories within the path are not affected by\nthis setting. This might be in conflict with other options that affect the\nfile mode, like fsGroup, and the result can be other mode bits set. When `null`, the `default_mode` field will be omitted from the resulting object.\n  - `secret_name` (`string`): The name of the secret in Cloud Secret Manager. By default, the secret\nis assumed to be in the same project.\nIf the secret is in another project, you must define an alias.\nAn alias definition has the form:\n{alias}:projects/{project-id|project-number}/secrets/{secret-name}.\nIf multiple alias definitions are needed, they must be separated by\ncommas.\nThe alias definitions must be set on the run.googleapis.com/secrets\nannotation.\n  - `items` (`list[obj]`): If unspecified, the volume will expose a file whose name is the\nsecret_name.\nIf specified, the key will be used as the version to fetch from Cloud\nSecret Manager and the path will be the name of the file exposed in the\nvolume. When items are defined, they must specify a key and a path. When `null`, the `items` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_run_service.template.spec.volumes.secret.items.new](#fn-templatetemplatespecvolumesitemsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `secret` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google-beta.google_cloud_run_service.traffic.new` constructs a new object with attributes and blocks configured for the `traffic`\nTerraform sub block.\n\n\n\n**Args**:\n  - `latest_revision` (`bool`): LatestRevision may be optionally provided to indicate that the latest ready\nRevision of the Configuration should be used for this traffic target. When\nprovided LatestRevision must be true if RevisionName is empty; it must be\nfalse when RevisionName is non-empty. When `null`, the `latest_revision` field will be omitted from the resulting object.\n  - `percent` (`number`): Percent specifies percent of the traffic to this Revision or Configuration.\n  - `revision_name` (`string`): RevisionName of a specific revision to which to send this portion of traffic. When `null`, the `revision_name` field will be omitted from the resulting object.\n  - `tag` (`string`): Tag is optionally used to expose a dedicated url for referencing this target exclusively. When `null`, the `tag` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `traffic` sub block.\n', args=[]),
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
  '#withAutogenerateRevisionName':: d.fn(help='`google-beta.bool.withAutogenerateRevisionName` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the autogenerate_revision_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `autogenerate_revision_name` field.\n', args=[]),
  withAutogenerateRevisionName(resourceLabel, value): {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          autogenerate_revision_name: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMetadata':: d.fn(help='`google-beta.list[obj].withMetadata` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withMetadataMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata` field.\n', args=[]),
  withMetadata(resourceLabel, value): {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  '#withMetadataMixin':: d.fn(help='`google-beta.list[obj].withMetadataMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withMetadata](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata` field.\n', args=[]),
  withMetadataMixin(resourceLabel, value): {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          metadata+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTemplate':: d.fn(help='`google-beta.list[obj].withTemplate` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the template field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withTemplateMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `template` field.\n', args=[]),
  withTemplate(resourceLabel, value): {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          template: value,
        },
      },
    },
  },
  '#withTemplateMixin':: d.fn(help='`google-beta.list[obj].withTemplateMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the template field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withTemplate](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `template` field.\n', args=[]),
  withTemplateMixin(resourceLabel, value): {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          template+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTraffic':: d.fn(help='`google-beta.list[obj].withTraffic` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the traffic field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withTrafficMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `traffic` field.\n', args=[]),
  withTraffic(resourceLabel, value): {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          traffic: value,
        },
      },
    },
  },
  '#withTrafficMixin':: d.fn(help='`google-beta.list[obj].withTrafficMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the traffic field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withTraffic](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `traffic` field.\n', args=[]),
  withTrafficMixin(resourceLabel, value): {
    resource+: {
      google_cloud_run_service+: {
        [resourceLabel]+: {
          traffic+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
