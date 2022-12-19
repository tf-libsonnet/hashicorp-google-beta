local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_os_config_guest_policies', url='', help='`google_os_config_guest_policies` represents the `google-beta_google_os_config_guest_policies` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  assignment:: {
    group_labels:: {
      '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.assignment.group_labels.new` constructs a new object with attributes and blocks configured for the `group_labels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): Google Compute Engine instance labels that must be present for an instance to be included in this assignment group.\n\n**Returns**:\n  - An attribute object that represents the `group_labels` sub block.\n', args=[]),
      new(
        labels
      ):: std.prune(a={
        labels: labels,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.assignment.new` constructs a new object with attributes and blocks configured for the `assignment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `instance_name_prefixes` (`list`): Targets VM instances whose name starts with one of these prefixes.\nLike labels, this is another way to group VM instances when targeting configs,\nfor example prefix=&#34;prod-&#34;.\nOnly supported for project-level policies. When `null`, the `instance_name_prefixes` field will be omitted from the resulting object.\n  - `instances` (`list`): Targets any of the instances specified. Instances are specified by their URI in the form\nzones/[ZONE]/instances/[INSTANCE_NAME].\nInstance targeting is uncommon and is supported to facilitate the management of changes\nby the instance or to target specific VM instances for development and testing.\nOnly supported for project-level policies and must reference instances within this project. When `null`, the `instances` field will be omitted from the resulting object.\n  - `zones` (`list`): Targets instances in any of these zones. Leave empty to target instances in any zone.\nZonal targeting is uncommon and is supported to facilitate the management of changes by zone. When `null`, the `zones` field will be omitted from the resulting object.\n  - `group_labels` (`list[obj]`): Targets instances matching at least one of these label sets. This allows an assignment to target disparate groups,\nfor example &#34;env=prod or env=staging&#34;. When `null`, the `group_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.assignment.group_labels.new](#fn-assignmentgrouplabelsnew) constructor.\n  - `os_types` (`list[obj]`): Targets VM instances matching at least one of the following OS types.\nVM instances must match all supplied criteria for a given OsType to be included. When `null`, the `os_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.assignment.os_types.new](#fn-assignmentostypesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `assignment` sub block.\n', args=[]),
    new(
      group_labels=null,
      instance_name_prefixes=null,
      instances=null,
      os_types=null,
      zones=null
    ):: std.prune(a={
      group_labels: group_labels,
      instance_name_prefixes: instance_name_prefixes,
      instances: instances,
      os_types: os_types,
      zones: zones,
    }),
    os_types:: {
      '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.assignment.os_types.new` constructs a new object with attributes and blocks configured for the `os_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `os_architecture` (`string`): Targets VM instances with OS Inventory enabled and having the following OS architecture. When `null`, the `os_architecture` field will be omitted from the resulting object.\n  - `os_short_name` (`string`): Targets VM instances with OS Inventory enabled and having the following OS short name, for example &#34;debian&#34; or &#34;windows&#34;. When `null`, the `os_short_name` field will be omitted from the resulting object.\n  - `os_version` (`string`): Targets VM instances with OS Inventory enabled and having the following following OS version. When `null`, the `os_version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `os_types` sub block.\n', args=[]),
      new(
        os_architecture=null,
        os_short_name=null,
        os_version=null
      ):: std.prune(a={
        os_architecture: os_architecture,
        os_short_name: os_short_name,
        os_version: os_version,
      }),
    },
  },
  '#new':: d.fn(help="\n`google-beta.google_os_config_guest_policies.new` injects a new `google-beta_google_os_config_guest_policies` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_os_config_guest_policies.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_os_config_guest_policies` using the reference:\n\n    $._ref.google-beta_google_os_config_guest_policies.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_os_config_guest_policies.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Description of the guest policy. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `etag` (`string`): The etag for this guest policy. If this is provided on update, it must match the server\u0026#39;s etag. When `null`, the `etag` field will be omitted from the resulting object.\n  - `guest_policy_id` (`string`): The logical name of the guest policy in the project with the following restrictions:\n* Must contain only lowercase letters, numbers, and hyphens.\n* Must start with a letter.\n* Must be between 1-63 characters.\n* Must end with a number or a letter.\n* Must be unique within the project.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `assignment` (`list[obj]`): Specifies the VM instances that are assigned to this policy. This allows you to target sets\nor groups of VM instances by different parameters such as labels, names, OS, or zones.\nIf left empty, all VM instances underneath this policy are targeted.\nAt the same level in the resource hierarchy (that is within a project), the service prevents\nthe creation of multiple policies that conflict with each other.\nFor more information, see how the service\n[handles assignment conflicts](https://cloud.google.com/compute/docs/os-config-management/create-guest-policy#handle-conflicts). When `null`, the `assignment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.assignment.new](#fn-googleosconfigguestpoliciesassignmentnew) constructor.\n  - `package_repositories` (`list[obj]`): A list of package repositories to configure on the VM instance.\nThis is done before any other configs are applied so they can use these repos.\nPackage repositories are only configured if the corresponding package manager(s) are available. When `null`, the `package_repositories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.package_repositories.new](#fn-googleosconfigguestpoliciespackagerepositoriesnew) constructor.\n  - `packages` (`list[obj]`): The software packages to be managed by this policy. When `null`, the `packages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.packages.new](#fn-googleosconfigguestpoliciespackagesnew) constructor.\n  - `recipes` (`list[obj]`): A list of Recipes to install on the VM instance. When `null`, the `recipes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.new](#fn-googleosconfigguestpoliciesrecipesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.timeouts.new](#fn-googleosconfigguestpoliciestimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    guest_policy_id,
    assignment=null,
    description=null,
    etag=null,
    package_repositories=null,
    packages=null,
    project=null,
    recipes=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_os_config_guest_policies',
    label=resourceLabel,
    attrs=self.newAttrs(
      assignment=assignment,
      description=description,
      etag=etag,
      guest_policy_id=guest_policy_id,
      package_repositories=package_repositories,
      packages=packages,
      project=project,
      recipes=recipes,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_os_config_guest_policies.newAttrs` constructs a new object with attributes and blocks configured for the `google_os_config_guest_policies`\nTerraform resource.\n\nUnlike [google-beta.google_os_config_guest_policies.new](#fn-googleosconfigguestpoliciesnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Description of the guest policy. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `etag` (`string`): The etag for this guest policy. If this is provided on update, it must match the server&#39;s etag. When `null`, the `etag` field will be omitted from the resulting object.\n  - `guest_policy_id` (`string`): The logical name of the guest policy in the project with the following restrictions:\n* Must contain only lowercase letters, numbers, and hyphens.\n* Must start with a letter.\n* Must be between 1-63 characters.\n* Must end with a number or a letter.\n* Must be unique within the project.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `assignment` (`list[obj]`): Specifies the VM instances that are assigned to this policy. This allows you to target sets\nor groups of VM instances by different parameters such as labels, names, OS, or zones.\nIf left empty, all VM instances underneath this policy are targeted.\nAt the same level in the resource hierarchy (that is within a project), the service prevents\nthe creation of multiple policies that conflict with each other.\nFor more information, see how the service\n[handles assignment conflicts](https://cloud.google.com/compute/docs/os-config-management/create-guest-policy#handle-conflicts). When `null`, the `assignment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.assignment.new](#fn-googleosconfigguestpoliciesassignmentnew) constructor.\n  - `package_repositories` (`list[obj]`): A list of package repositories to configure on the VM instance.\nThis is done before any other configs are applied so they can use these repos.\nPackage repositories are only configured if the corresponding package manager(s) are available. When `null`, the `package_repositories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.package_repositories.new](#fn-googleosconfigguestpoliciespackagerepositoriesnew) constructor.\n  - `packages` (`list[obj]`): The software packages to be managed by this policy. When `null`, the `packages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.packages.new](#fn-googleosconfigguestpoliciespackagesnew) constructor.\n  - `recipes` (`list[obj]`): A list of Recipes to install on the VM instance. When `null`, the `recipes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.new](#fn-googleosconfigguestpoliciesrecipesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.timeouts.new](#fn-googleosconfigguestpoliciestimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_os_config_guest_policies` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    guest_policy_id,
    assignment=null,
    description=null,
    etag=null,
    package_repositories=null,
    packages=null,
    project=null,
    recipes=null,
    timeouts=null
  ):: std.prune(a={
    assignment: assignment,
    description: description,
    etag: etag,
    guest_policy_id: guest_policy_id,
    package_repositories: package_repositories,
    packages: packages,
    project: project,
    recipes: recipes,
    timeouts: timeouts,
  }),
  package_repositories:: {
    apt:: {
      '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.package_repositories.apt.new` constructs a new object with attributes and blocks configured for the `apt`\nTerraform sub block.\n\n\n\n**Args**:\n  - `archive_type` (`string`): Type of archive files in this repository. The default behavior is DEB. Default value: &#34;DEB&#34; Possible values: [&#34;DEB&#34;, &#34;DEB_SRC&#34;] When `null`, the `archive_type` field will be omitted from the resulting object.\n  - `components` (`list`): List of components for this repository. Must contain at least one item.\n  - `distribution` (`string`): Distribution of this repository.\n  - `gpg_key` (`string`): URI of the key file for this repository. The agent maintains a keyring at\n/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg containing all the keys in any applied guest policy. When `null`, the `gpg_key` field will be omitted from the resulting object.\n  - `uri` (`string`): URI for this repository.\n\n**Returns**:\n  - An attribute object that represents the `apt` sub block.\n', args=[]),
      new(
        components,
        distribution,
        uri,
        archive_type=null,
        gpg_key=null
      ):: std.prune(a={
        archive_type: archive_type,
        components: components,
        distribution: distribution,
        gpg_key: gpg_key,
        uri: uri,
      }),
    },
    goo:: {
      '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.package_repositories.goo.new` constructs a new object with attributes and blocks configured for the `goo`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The name of the repository.\n  - `url` (`string`): The url of the repository.\n\n**Returns**:\n  - An attribute object that represents the `goo` sub block.\n', args=[]),
      new(
        name,
        url
      ):: std.prune(a={
        name: name,
        url: url,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.package_repositories.new` constructs a new object with attributes and blocks configured for the `package_repositories`\nTerraform sub block.\n\n\n\n**Args**:\n  - `apt` (`list[obj]`): An Apt Repository. When `null`, the `apt` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.package_repositories.apt.new](#fn-packagerepositoriesaptnew) constructor.\n  - `goo` (`list[obj]`): A Goo Repository. When `null`, the `goo` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.package_repositories.goo.new](#fn-packagerepositoriesgoonew) constructor.\n  - `yum` (`list[obj]`): A Yum Repository. When `null`, the `yum` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.package_repositories.yum.new](#fn-packagerepositoriesyumnew) constructor.\n  - `zypper` (`list[obj]`): A Zypper Repository. When `null`, the `zypper` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.package_repositories.zypper.new](#fn-packagerepositorieszyppernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `package_repositories` sub block.\n', args=[]),
    new(
      apt=null,
      goo=null,
      yum=null,
      zypper=null
    ):: std.prune(a={
      apt: apt,
      goo: goo,
      yum: yum,
      zypper: zypper,
    }),
    yum:: {
      '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.package_repositories.yum.new` constructs a new object with attributes and blocks configured for the `yum`\nTerraform sub block.\n\n\n\n**Args**:\n  - `base_url` (`string`): The location of the repository directory.\n  - `display_name` (`string`): The display name of the repository. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `gpg_keys` (`list`): URIs of GPG keys. When `null`, the `gpg_keys` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `yum` sub block.\n', args=[]),
      new(
        base_url,
        display_name=null,
        gpg_keys=null
      ):: std.prune(a={
        base_url: base_url,
        display_name: display_name,
        gpg_keys: gpg_keys,
      }),
    },
    zypper:: {
      '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.package_repositories.zypper.new` constructs a new object with attributes and blocks configured for the `zypper`\nTerraform sub block.\n\n\n\n**Args**:\n  - `base_url` (`string`): The location of the repository directory.\n  - `display_name` (`string`): The display name of the repository. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `gpg_keys` (`list`): URIs of GPG keys. When `null`, the `gpg_keys` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `zypper` sub block.\n', args=[]),
      new(
        base_url,
        display_name=null,
        gpg_keys=null
      ):: std.prune(a={
        base_url: base_url,
        display_name: display_name,
        gpg_keys: gpg_keys,
      }),
    },
  },
  packages:: {
    '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.packages.new` constructs a new object with attributes and blocks configured for the `packages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `desired_state` (`string`): The desiredState the agent should maintain for this package. The default is to ensure the package is installed. Possible values: [&#34;INSTALLED&#34;, &#34;UPDATED&#34;, &#34;REMOVED&#34;] When `null`, the `desired_state` field will be omitted from the resulting object.\n  - `manager` (`string`): Type of package manager that can be used to install this package. If a system does not have the package manager,\nthe package is not installed or removed no error message is returned. By default, or if you specify ANY,\nthe agent attempts to install and remove this package using the default package manager.\nThis is useful when creating a policy that applies to different types of systems.\nThe default behavior is ANY. Default value: &#34;ANY&#34; Possible values: [&#34;ANY&#34;, &#34;APT&#34;, &#34;YUM&#34;, &#34;ZYPPER&#34;, &#34;GOO&#34;] When `null`, the `manager` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the package. A package is uniquely identified for conflict validation\nby checking the package name and the manager(s) that the package targets.\n\n**Returns**:\n  - An attribute object that represents the `packages` sub block.\n', args=[]),
    new(
      name,
      desired_state=null,
      manager=null
    ):: std.prune(a={
      desired_state: desired_state,
      manager: manager,
      name: name,
    }),
  },
  recipes:: {
    artifacts:: {
      gcs:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.artifacts.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): Bucket of the Google Cloud Storage object. Given an example URL: https://storage.googleapis.com/my-bucket/foo/bar#1234567\nthis value would be my-bucket. When `null`, the `bucket` field will be omitted from the resulting object.\n  - `generation` (`number`): Must be provided if allowInsecure is false. Generation number of the Google Cloud Storage object.\nhttps://storage.googleapis.com/my-bucket/foo/bar#1234567 this value would be 1234567. When `null`, the `generation` field will be omitted from the resulting object.\n  - `object` (`string`): Name of the Google Cloud Storage object. Given an example URL: https://storage.googleapis.com/my-bucket/foo/bar#1234567\nthis value would be foo/bar. When `null`, the `object` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `gcs` sub block.\n', args=[]),
        new(
          bucket=null,
          generation=null,
          object=null
        ):: std.prune(a={
          bucket: bucket,
          generation: generation,
          object: object,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.artifacts.new` constructs a new object with attributes and blocks configured for the `artifacts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_insecure` (`bool`): Defaults to false. When false, recipes are subject to validations based on the artifact type:\nRemote: A checksum must be specified, and only protocols with transport-layer security are permitted.\nGCS: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.\n  - `gcs` (`list[obj]`): A Google Cloud Storage artifact. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.artifacts.gcs.new](#fn-artifactsgcsnew) constructor.\n  - `remote` (`list[obj]`): A generic remote artifact. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.artifacts.remote.new](#fn-artifactsremotenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `artifacts` sub block.\n', args=[]),
      new(
        allow_insecure=null,
        gcs=null,
        remote=null
      ):: std.prune(a={
        allow_insecure: allow_insecure,
        gcs: gcs,
        remote: remote,
      }),
      remote:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.artifacts.remote.new` constructs a new object with attributes and blocks configured for the `remote`\nTerraform sub block.\n\n\n\n**Args**:\n  - `check_sum` (`string`): Must be provided if allowInsecure is false. SHA256 checksum in hex format, to compare to the checksum of the artifact.\nIf the checksum is not empty and it doesn&#39;t match the artifact then the recipe installation fails before running any\nof the steps. When `null`, the `check_sum` field will be omitted from the resulting object.\n  - `uri` (`string`): URI from which to fetch the object. It should contain both the protocol and path following the format {protocol}://{location}. When `null`, the `uri` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `remote` sub block.\n', args=[]),
        new(
          check_sum=null,
          uri=null
        ):: std.prune(a={
          check_sum: check_sum,
          uri: uri,
        }),
      },
    },
    install_steps:: {
      archive_extraction:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.install_steps.archive_extraction.new` constructs a new object with attributes and blocks configured for the `archive_extraction`\nTerraform sub block.\n\n\n\n**Args**:\n  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.\n  - `destination` (`string`): Directory to extract archive to. Defaults to / on Linux or C:\\ on Windows. When `null`, the `destination` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the archive to extract. Possible values: [&#34;TAR&#34;, &#34;TAR_GZIP&#34;, &#34;TAR_BZIP&#34;, &#34;TAR_LZMA&#34;, &#34;TAR_XZ&#34;, &#34;ZIP&#34;]\n\n**Returns**:\n  - An attribute object that represents the `archive_extraction` sub block.\n', args=[]),
        new(
          artifact_id,
          type,
          destination=null
        ):: std.prune(a={
          artifact_id: artifact_id,
          destination: destination,
          type: type,
        }),
      },
      dpkg_installation:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.install_steps.dpkg_installation.new` constructs a new object with attributes and blocks configured for the `dpkg_installation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.\n\n**Returns**:\n  - An attribute object that represents the `dpkg_installation` sub block.\n', args=[]),
        new(
          artifact_id
        ):: std.prune(a={
          artifact_id: artifact_id,
        }),
      },
      file_copy:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.install_steps.file_copy.new` constructs a new object with attributes and blocks configured for the `file_copy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.\n  - `destination` (`string`): The absolute path on the instance to put the file.\n  - `overwrite` (`bool`): Whether to allow this step to overwrite existing files.If this is false and the file already exists the file\nis not overwritten and the step is considered a success. Defaults to false. When `null`, the `overwrite` field will be omitted from the resulting object.\n  - `permissions` (`string`): Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users\nfor the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit\nnumber with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one\nbit corresponds to the execute permission. Default behavior is 755.\n\nBelow are some examples of permissions and their associated values:\nread, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4 When `null`, the `permissions` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `file_copy` sub block.\n', args=[]),
        new(
          artifact_id,
          destination,
          overwrite=null,
          permissions=null
        ):: std.prune(a={
          artifact_id: artifact_id,
          destination: destination,
          overwrite: overwrite,
          permissions: permissions,
        }),
      },
      file_exec:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.install_steps.file_exec.new` constructs a new object with attributes and blocks configured for the `file_exec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_exit_codes` (`string`): A list of possible return values that the program can return to indicate a success. Defaults to [0]. When `null`, the `allowed_exit_codes` field will be omitted from the resulting object.\n  - `args` (`list`): Arguments to be passed to the provided executable. When `null`, the `args` field will be omitted from the resulting object.\n  - `artifact_id` (`string`): The id of the relevant artifact in the recipe. When `null`, the `artifact_id` field will be omitted from the resulting object.\n  - `local_path` (`string`): The absolute path of the file on the local filesystem. When `null`, the `local_path` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `file_exec` sub block.\n', args=[]),
        new(
          allowed_exit_codes=null,
          args=null,
          artifact_id=null,
          local_path=null
        ):: std.prune(a={
          allowed_exit_codes: allowed_exit_codes,
          args: args,
          artifact_id: artifact_id,
          local_path: local_path,
        }),
      },
      msi_installation:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.install_steps.msi_installation.new` constructs a new object with attributes and blocks configured for the `msi_installation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_exit_codes` (`list`): Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0] When `null`, the `allowed_exit_codes` field will be omitted from the resulting object.\n  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.\n  - `flags` (`list`): The flags to use when installing the MSI. Defaults to the install flag. When `null`, the `flags` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `msi_installation` sub block.\n', args=[]),
        new(
          artifact_id,
          allowed_exit_codes=null,
          flags=null
        ):: std.prune(a={
          allowed_exit_codes: allowed_exit_codes,
          artifact_id: artifact_id,
          flags: flags,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.install_steps.new` constructs a new object with attributes and blocks configured for the `install_steps`\nTerraform sub block.\n\n\n\n**Args**:\n  - `archive_extraction` (`list[obj]`): Extracts an archive into the specified directory. When `null`, the `archive_extraction` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.archive_extraction.new](#fn-installstepsarchiveextractionnew) constructor.\n  - `dpkg_installation` (`list[obj]`): Installs a deb file via dpkg. When `null`, the `dpkg_installation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.dpkg_installation.new](#fn-installstepsdpkginstallationnew) constructor.\n  - `file_copy` (`list[obj]`): Copies a file onto the instance. When `null`, the `file_copy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.file_copy.new](#fn-installstepsfilecopynew) constructor.\n  - `file_exec` (`list[obj]`): Executes an artifact or local file. When `null`, the `file_exec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.file_exec.new](#fn-installstepsfileexecnew) constructor.\n  - `msi_installation` (`list[obj]`): Installs an MSI file. When `null`, the `msi_installation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.msi_installation.new](#fn-installstepsmsiinstallationnew) constructor.\n  - `rpm_installation` (`list[obj]`): Installs an rpm file via the rpm utility. When `null`, the `rpm_installation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.rpm_installation.new](#fn-installstepsrpminstallationnew) constructor.\n  - `script_run` (`list[obj]`): Runs commands in a shell. When `null`, the `script_run` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.script_run.new](#fn-installstepsscriptrunnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `install_steps` sub block.\n', args=[]),
      new(
        archive_extraction=null,
        dpkg_installation=null,
        file_copy=null,
        file_exec=null,
        msi_installation=null,
        rpm_installation=null,
        script_run=null
      ):: std.prune(a={
        archive_extraction: archive_extraction,
        dpkg_installation: dpkg_installation,
        file_copy: file_copy,
        file_exec: file_exec,
        msi_installation: msi_installation,
        rpm_installation: rpm_installation,
        script_run: script_run,
      }),
      rpm_installation:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.install_steps.rpm_installation.new` constructs a new object with attributes and blocks configured for the `rpm_installation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.\n\n**Returns**:\n  - An attribute object that represents the `rpm_installation` sub block.\n', args=[]),
        new(
          artifact_id
        ):: std.prune(a={
          artifact_id: artifact_id,
        }),
      },
      script_run:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.install_steps.script_run.new` constructs a new object with attributes and blocks configured for the `script_run`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_exit_codes` (`list`): Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0] When `null`, the `allowed_exit_codes` field will be omitted from the resulting object.\n  - `interpreter` (`string`): The script interpreter to use to run the script. If no interpreter is specified the script is executed directly,\nwhich likely only succeed for scripts with shebang lines. Possible values: [&#34;SHELL&#34;, &#34;POWERSHELL&#34;] When `null`, the `interpreter` field will be omitted from the resulting object.\n  - `script` (`string`): The shell script to be executed.\n\n**Returns**:\n  - An attribute object that represents the `script_run` sub block.\n', args=[]),
        new(
          script,
          allowed_exit_codes=null,
          interpreter=null
        ):: std.prune(a={
          allowed_exit_codes: allowed_exit_codes,
          interpreter: interpreter,
          script: script,
        }),
      },
    },
    '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.new` constructs a new object with attributes and blocks configured for the `recipes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `desired_state` (`string`): Default is INSTALLED. The desired state the agent should maintain for this recipe.\n\nINSTALLED: The software recipe is installed on the instance but won&#39;t be updated to new versions.\nINSTALLED_KEEP_UPDATED: The software recipe is installed on the instance. The recipe is updated to a higher version,\nif a higher version of the recipe is assigned to this instance.\nREMOVE: Remove is unsupported for software recipes and attempts to create or update a recipe to the REMOVE state is rejected. Default value: &#34;INSTALLED&#34; Possible values: [&#34;INSTALLED&#34;, &#34;UPDATED&#34;, &#34;REMOVED&#34;] When `null`, the `desired_state` field will be omitted from the resulting object.\n  - `name` (`string`): Unique identifier for the recipe. Only one recipe with a given name is installed on an instance.\nNames are also used to identify resources which helps to determine whether guest policies have conflicts.\nThis means that requests to create multiple recipes with the same name and version are rejected since they\ncould potentially have conflicting assignments.\n  - `version` (`string`): The version of this software recipe. Version can be up to 4 period separated numbers (e.g. 12.34.56.78). When `null`, the `version` field will be omitted from the resulting object.\n  - `artifacts` (`list[obj]`): Resources available to be used in the steps in the recipe. When `null`, the `artifacts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.artifacts.new](#fn-recipesartifactsnew) constructor.\n  - `install_steps` (`list[obj]`): Actions to be taken for installing this recipe. On failure it stops executing steps and does not attempt another installation.\nAny steps taken (including partially completed steps) are not rolled back. When `null`, the `install_steps` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.new](#fn-recipesinstallstepsnew) constructor.\n  - `update_steps` (`list[obj]`): Actions to be taken for updating this recipe. On failure it stops executing steps and does not attempt another update for this recipe.\nAny steps taken (including partially completed steps) are not rolled back. When `null`, the `update_steps` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.new](#fn-recipesupdatestepsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `recipes` sub block.\n', args=[]),
    new(
      name,
      artifacts=null,
      desired_state=null,
      install_steps=null,
      update_steps=null,
      version=null
    ):: std.prune(a={
      artifacts: artifacts,
      desired_state: desired_state,
      install_steps: install_steps,
      name: name,
      update_steps: update_steps,
      version: version,
    }),
    update_steps:: {
      archive_extraction:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.update_steps.archive_extraction.new` constructs a new object with attributes and blocks configured for the `archive_extraction`\nTerraform sub block.\n\n\n\n**Args**:\n  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.\n  - `destination` (`string`): Directory to extract archive to. Defaults to / on Linux or C:\\ on Windows. When `null`, the `destination` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the archive to extract. Possible values: [&#34;TAR&#34;, &#34;TAR_GZIP&#34;, &#34;TAR_BZIP&#34;, &#34;TAR_LZMA&#34;, &#34;TAR_XZ&#34;, &#34;ZIP&#34;]\n\n**Returns**:\n  - An attribute object that represents the `archive_extraction` sub block.\n', args=[]),
        new(
          artifact_id,
          type,
          destination=null
        ):: std.prune(a={
          artifact_id: artifact_id,
          destination: destination,
          type: type,
        }),
      },
      dpkg_installation:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.update_steps.dpkg_installation.new` constructs a new object with attributes and blocks configured for the `dpkg_installation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.\n\n**Returns**:\n  - An attribute object that represents the `dpkg_installation` sub block.\n', args=[]),
        new(
          artifact_id
        ):: std.prune(a={
          artifact_id: artifact_id,
        }),
      },
      file_copy:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.update_steps.file_copy.new` constructs a new object with attributes and blocks configured for the `file_copy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.\n  - `destination` (`string`): The absolute path on the instance to put the file.\n  - `overwrite` (`bool`): Whether to allow this step to overwrite existing files.If this is false and the file already exists the file\nis not overwritten and the step is considered a success. Defaults to false. When `null`, the `overwrite` field will be omitted from the resulting object.\n  - `permissions` (`string`): Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users\nfor the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit\nnumber with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one\nbit corresponds to the execute permission. Default behavior is 755.\n\nBelow are some examples of permissions and their associated values:\nread, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4 When `null`, the `permissions` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `file_copy` sub block.\n', args=[]),
        new(
          artifact_id,
          destination,
          overwrite=null,
          permissions=null
        ):: std.prune(a={
          artifact_id: artifact_id,
          destination: destination,
          overwrite: overwrite,
          permissions: permissions,
        }),
      },
      file_exec:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.update_steps.file_exec.new` constructs a new object with attributes and blocks configured for the `file_exec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_exit_codes` (`list`): A list of possible return values that the program can return to indicate a success. Defaults to [0]. When `null`, the `allowed_exit_codes` field will be omitted from the resulting object.\n  - `args` (`list`): Arguments to be passed to the provided executable. When `null`, the `args` field will be omitted from the resulting object.\n  - `artifact_id` (`string`): The id of the relevant artifact in the recipe. When `null`, the `artifact_id` field will be omitted from the resulting object.\n  - `local_path` (`string`): The absolute path of the file on the local filesystem. When `null`, the `local_path` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `file_exec` sub block.\n', args=[]),
        new(
          allowed_exit_codes=null,
          args=null,
          artifact_id=null,
          local_path=null
        ):: std.prune(a={
          allowed_exit_codes: allowed_exit_codes,
          args: args,
          artifact_id: artifact_id,
          local_path: local_path,
        }),
      },
      msi_installation:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.update_steps.msi_installation.new` constructs a new object with attributes and blocks configured for the `msi_installation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_exit_codes` (`list`): Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0] When `null`, the `allowed_exit_codes` field will be omitted from the resulting object.\n  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.\n  - `flags` (`list`): The flags to use when installing the MSI. Defaults to the install flag. When `null`, the `flags` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `msi_installation` sub block.\n', args=[]),
        new(
          artifact_id,
          allowed_exit_codes=null,
          flags=null
        ):: std.prune(a={
          allowed_exit_codes: allowed_exit_codes,
          artifact_id: artifact_id,
          flags: flags,
        }),
      },
      '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.update_steps.new` constructs a new object with attributes and blocks configured for the `update_steps`\nTerraform sub block.\n\n\n\n**Args**:\n  - `archive_extraction` (`list[obj]`): Extracts an archive into the specified directory. When `null`, the `archive_extraction` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.archive_extraction.new](#fn-updatestepsarchiveextractionnew) constructor.\n  - `dpkg_installation` (`list[obj]`): Installs a deb file via dpkg. When `null`, the `dpkg_installation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.dpkg_installation.new](#fn-updatestepsdpkginstallationnew) constructor.\n  - `file_copy` (`list[obj]`): Copies a file onto the instance. When `null`, the `file_copy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.file_copy.new](#fn-updatestepsfilecopynew) constructor.\n  - `file_exec` (`list[obj]`): Executes an artifact or local file. When `null`, the `file_exec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.file_exec.new](#fn-updatestepsfileexecnew) constructor.\n  - `msi_installation` (`list[obj]`): Installs an MSI file. When `null`, the `msi_installation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.msi_installation.new](#fn-updatestepsmsiinstallationnew) constructor.\n  - `rpm_installation` (`list[obj]`): Installs an rpm file via the rpm utility. When `null`, the `rpm_installation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.rpm_installation.new](#fn-updatestepsrpminstallationnew) constructor.\n  - `script_run` (`list[obj]`): Runs commands in a shell. When `null`, the `script_run` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.script_run.new](#fn-updatestepsscriptrunnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `update_steps` sub block.\n', args=[]),
      new(
        archive_extraction=null,
        dpkg_installation=null,
        file_copy=null,
        file_exec=null,
        msi_installation=null,
        rpm_installation=null,
        script_run=null
      ):: std.prune(a={
        archive_extraction: archive_extraction,
        dpkg_installation: dpkg_installation,
        file_copy: file_copy,
        file_exec: file_exec,
        msi_installation: msi_installation,
        rpm_installation: rpm_installation,
        script_run: script_run,
      }),
      rpm_installation:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.update_steps.rpm_installation.new` constructs a new object with attributes and blocks configured for the `rpm_installation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.\n\n**Returns**:\n  - An attribute object that represents the `rpm_installation` sub block.\n', args=[]),
        new(
          artifact_id
        ):: std.prune(a={
          artifact_id: artifact_id,
        }),
      },
      script_run:: {
        '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.recipes.update_steps.script_run.new` constructs a new object with attributes and blocks configured for the `script_run`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_exit_codes` (`list`): Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0] When `null`, the `allowed_exit_codes` field will be omitted from the resulting object.\n  - `interpreter` (`string`): The script interpreter to use to run the script. If no interpreter is specified the script is executed directly,\nwhich likely only succeed for scripts with shebang lines. Possible values: [&#34;SHELL&#34;, &#34;POWERSHELL&#34;] When `null`, the `interpreter` field will be omitted from the resulting object.\n  - `script` (`string`): The shell script to be executed.\n\n**Returns**:\n  - An attribute object that represents the `script_run` sub block.\n', args=[]),
        new(
          script,
          allowed_exit_codes=null,
          interpreter=null
        ):: std.prune(a={
          allowed_exit_codes: allowed_exit_codes,
          interpreter: interpreter,
          script: script,
        }),
      },
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_os_config_guest_policies.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAssignment':: d.fn(help='`google-beta.list[obj].withAssignment` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the assignment field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withAssignmentMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `assignment` field.\n', args=[]),
  withAssignment(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          assignment: value,
        },
      },
    },
  },
  '#withAssignmentMixin':: d.fn(help='`google-beta.list[obj].withAssignmentMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the assignment field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAssignment](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `assignment` field.\n', args=[]),
  withAssignmentMixin(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          assignment+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEtag':: d.fn(help='`google-beta.string.withEtag` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the etag field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `etag` field.\n', args=[]),
  withEtag(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          etag: value,
        },
      },
    },
  },
  '#withGuestPolicyId':: d.fn(help='`google-beta.string.withGuestPolicyId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the guest_policy_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `guest_policy_id` field.\n', args=[]),
  withGuestPolicyId(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          guest_policy_id: value,
        },
      },
    },
  },
  '#withPackageRepositories':: d.fn(help='`google-beta.list[obj].withPackageRepositories` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the package_repositories field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withPackageRepositoriesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `package_repositories` field.\n', args=[]),
  withPackageRepositories(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          package_repositories: value,
        },
      },
    },
  },
  '#withPackageRepositoriesMixin':: d.fn(help='`google-beta.list[obj].withPackageRepositoriesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the package_repositories field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withPackageRepositories](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `package_repositories` field.\n', args=[]),
  withPackageRepositoriesMixin(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          package_repositories+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPackages':: d.fn(help='`google-beta.list[obj].withPackages` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the packages field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withPackagesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `packages` field.\n', args=[]),
  withPackages(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          packages: value,
        },
      },
    },
  },
  '#withPackagesMixin':: d.fn(help='`google-beta.list[obj].withPackagesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the packages field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withPackages](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `packages` field.\n', args=[]),
  withPackagesMixin(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          packages+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRecipes':: d.fn(help='`google-beta.list[obj].withRecipes` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the recipes field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withRecipesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `recipes` field.\n', args=[]),
  withRecipes(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          recipes: value,
        },
      },
    },
  },
  '#withRecipesMixin':: d.fn(help='`google-beta.list[obj].withRecipesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the recipes field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRecipes](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `recipes` field.\n', args=[]),
  withRecipesMixin(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          recipes+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
