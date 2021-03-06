stylesheetsManager = Ember.Object.create
  enable: (id) ->
    $("##{id}").removeAttr('disabled')

  disable: (id) ->
    $("##{id}").attr('disabled', 'disabled')

initialize = (container, application) ->
  application.register 'stylesheetsManager:main', stylesheetsManager, { instantiate: false }

  application.inject('route', 'stylesheetsManager', 'stylesheetsManager:main')

StylesheetsManagerInitializer =
  name: 'inject-stylesheets-manager'
  initialize: initialize

`export {initialize}`
`export default StylesheetsManagerInitializer`
