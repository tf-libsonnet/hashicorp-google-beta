local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_client_openid_userinfo', url='', help='`google_client_openid_userinfo` represents the `google-beta_google_client_openid_userinfo` Terraform data source.\n\nGet OpenID userinfo about the credentials used with the Google provider, specifically the email.\nThis datasource enables you to export the email of the account you&#39;ve authenticated the provider with; this can be used alongside data.google_client_config&#39;s access_token to perform OpenID Connect authentication with GKE and configure an RBAC role for the email used.\n\n~&gt; This resource will only work as expected if the provider is configured to use the https://www.googleapis.com/auth/userinfo.email scope! You will receive an error otherwise. The provider uses this scope by default.\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.data.google_client_openid_userinfo.new` injects a new `data_google-beta_google_client_openid_userinfo` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.data.google_client_openid_userinfo.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.data.google_client_openid_userinfo` using the reference:\n\n    $._ref.data_google-beta_google_client_openid_userinfo.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google-beta_google_client_openid_userinfo.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    _meta={}
  ):: tf.withData(
    type='google_client_openid_userinfo',
    label=dataSrcLabel,
    attrs=self.newAttrs(),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.data.google_client_openid_userinfo.newAttrs` constructs a new object with attributes and blocks configured for the `google_client_openid_userinfo`\nTerraform data source.\n\nUnlike [google-beta.data.google_client_openid_userinfo.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_client_openid_userinfo` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(

  ):: std.prune(a={}),
}
