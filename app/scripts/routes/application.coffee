'use strict'

@app.config [
  "$stateProvider"
  "routeConfig"
  "routes"
  ($stateProvider, routeConfig, routes) ->
    $stateProvider.state routes.application.name,
      url: routes.application.url
      views:
        application: routeConfig(routes.application)
]
