local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    web_app_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_firebase_web_app_config',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, web_app_id=web_app_id),
    _meta=_meta
  ),
  newAttrs(
    web_app_id,
    project=null
  ):: std.prune(a={
    project: project,
    web_app_id: web_app_id,
  }),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_firebase_web_app_config+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withWebAppId(dataSrcLabel, value):: {
    data+: {
      google_firebase_web_app_config+: {
        [dataSrcLabel]+: {
          web_app_id: value,
        },
      },
    },
  },
}
