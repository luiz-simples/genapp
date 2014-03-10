'use strict'

@app.config [
  "$urlRouterProvider"
  "routes"
  ($urlRouterProvider, routes) ->
    $urlRouterProvider.otherwise routes.otherwise.url
]
