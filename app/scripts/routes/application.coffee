'use strict'

@app.config [
  "$stateProvider"
  "routeConfig"
  "routeApplication"
  ($stateProvider, routeConfig, routeApplication) ->
    $stateProvider.state routeApplication.name,
      url: routeApplication.url
      views:
        application: routeConfig routeApplication
]
