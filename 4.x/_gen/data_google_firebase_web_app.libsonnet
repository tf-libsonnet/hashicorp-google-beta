local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    app_id,
    _meta={}
  ):: tf.withData(
    type='google_firebase_web_app',
    label=dataSrcLabel,
    attrs=self.newAttrs(app_id=app_id),
    _meta=_meta
  ),
  newAttrs(
    app_id
  ):: std.prune(a={
    app_id: app_id,
  }),
  withAppId(dataSrcLabel, value):: {
    data+: {
      google_firebase_web_app+: {
        [dataSrcLabel]+: {
          app_id: value,
        },
      },
    },
  },
}
