local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_bigquery_reservation', url='', help='`google_bigquery_reservation` represents the `google-beta_google_bigquery_reservation` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  autoscale:: {
    '#new':: d.fn(help='\n`google-beta.google_bigquery_reservation.autoscale.new` constructs a new object with attributes and blocks configured for the `autoscale`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_slots` (`number`): Number of slots to be scaled when needed. When `null`, the `max_slots` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `autoscale` sub block.\n', args=[]),
    new(
      max_slots=null
    ):: std.prune(a={
      max_slots: max_slots,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_bigquery_reservation.new` injects a new `google-beta_google_bigquery_reservation` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_bigquery_reservation.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_bigquery_reservation` using the reference:\n\n    $._ref.google-beta_google_bigquery_reservation.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_bigquery_reservation.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `concurrency` (`number`): Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size. When `null`, the `concurrency` field will be omitted from the resulting object.\n  - `edition` (`string`): The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS When `null`, the `edition` field will be omitted from the resulting object.\n  - `ignore_idle_slots` (`bool`): If false, any query using this reservation will use idle slots from other reservations within\nthe same admin project. If true, a query using this reservation will execute with the slot\ncapacity specified above at most. When `null`, the `ignore_idle_slots` field will be omitted from the resulting object.\n  - `location` (`string`): The geographic location where the transfer config should reside.\nExamples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.\n  - `multi_region_auxiliary` (`bool`): Applicable only for reservations located within one of the BigQuery multi-regions (US or EU).\nIf set to true, this reservation is placed in the organization\u0026#39;s secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization\u0026#39;s default region. When `null`, the `multi_region_auxiliary` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the reservation. This field must only contain alphanumeric characters or dash.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `slot_capacity` (`number`): Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the\nunit of parallelism. Queries using this reservation might use more slots during runtime if ignoreIdleSlots is set to false.\n  - `autoscale` (`list[obj]`): The configuration parameters for the auto scaling feature. When `null`, the `autoscale` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_bigquery_reservation.autoscale.new](#fn-autoscalenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_bigquery_reservation.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    slot_capacity,
    autoscale=null,
    concurrency=null,
    edition=null,
    ignore_idle_slots=null,
    location=null,
    multi_region_auxiliary=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_reservation',
    label=resourceLabel,
    attrs=self.newAttrs(
      autoscale=autoscale,
      concurrency=concurrency,
      edition=edition,
      ignore_idle_slots=ignore_idle_slots,
      location=location,
      multi_region_auxiliary=multi_region_auxiliary,
      name=name,
      project=project,
      slot_capacity=slot_capacity,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_bigquery_reservation.newAttrs` constructs a new object with attributes and blocks configured for the `google_bigquery_reservation`\nTerraform resource.\n\nUnlike [google-beta.google_bigquery_reservation.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `concurrency` (`number`): Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size. When `null`, the `concurrency` field will be omitted from the resulting object.\n  - `edition` (`string`): The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS When `null`, the `edition` field will be omitted from the resulting object.\n  - `ignore_idle_slots` (`bool`): If false, any query using this reservation will use idle slots from other reservations within\nthe same admin project. If true, a query using this reservation will execute with the slot\ncapacity specified above at most. When `null`, the `ignore_idle_slots` field will be omitted from the resulting object.\n  - `location` (`string`): The geographic location where the transfer config should reside.\nExamples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.\n  - `multi_region_auxiliary` (`bool`): Applicable only for reservations located within one of the BigQuery multi-regions (US or EU).\nIf set to true, this reservation is placed in the organization&#39;s secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization&#39;s default region. When `null`, the `multi_region_auxiliary` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the reservation. This field must only contain alphanumeric characters or dash.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `slot_capacity` (`number`): Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the\nunit of parallelism. Queries using this reservation might use more slots during runtime if ignoreIdleSlots is set to false.\n  - `autoscale` (`list[obj]`): The configuration parameters for the auto scaling feature. When `null`, the `autoscale` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_bigquery_reservation.autoscale.new](#fn-autoscalenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_bigquery_reservation.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_bigquery_reservation` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    slot_capacity,
    autoscale=null,
    concurrency=null,
    edition=null,
    ignore_idle_slots=null,
    location=null,
    multi_region_auxiliary=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    autoscale: autoscale,
    concurrency: concurrency,
    edition: edition,
    ignore_idle_slots: ignore_idle_slots,
    location: location,
    multi_region_auxiliary: multi_region_auxiliary,
    name: name,
    project: project,
    slot_capacity: slot_capacity,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_bigquery_reservation.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAutoscale':: d.fn(help='`google-beta.list[obj].withAutoscale` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoscale field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withAutoscaleMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoscale` field.\n', args=[]),
  withAutoscale(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          autoscale: value,
        },
      },
    },
  },
  '#withAutoscaleMixin':: d.fn(help='`google-beta.list[obj].withAutoscaleMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoscale field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAutoscale](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoscale` field.\n', args=[]),
  withAutoscaleMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          autoscale+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withConcurrency':: d.fn(help='`google-beta.number.withConcurrency` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the concurrency field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `concurrency` field.\n', args=[]),
  withConcurrency(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          concurrency: value,
        },
      },
    },
  },
  '#withEdition':: d.fn(help='`google-beta.string.withEdition` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the edition field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `edition` field.\n', args=[]),
  withEdition(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          edition: value,
        },
      },
    },
  },
  '#withIgnoreIdleSlots':: d.fn(help='`google-beta.bool.withIgnoreIdleSlots` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the ignore_idle_slots field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `ignore_idle_slots` field.\n', args=[]),
  withIgnoreIdleSlots(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          ignore_idle_slots: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMultiRegionAuxiliary':: d.fn(help='`google-beta.bool.withMultiRegionAuxiliary` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the multi_region_auxiliary field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `multi_region_auxiliary` field.\n', args=[]),
  withMultiRegionAuxiliary(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          multi_region_auxiliary: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSlotCapacity':: d.fn(help='`google-beta.number.withSlotCapacity` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the slot_capacity field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `slot_capacity` field.\n', args=[]),
  withSlotCapacity(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          slot_capacity: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
