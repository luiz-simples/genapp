'use strict'

String.prototype.capitalize = ()->
  this.toLowerCase().charAt(0).toUpperCase().concat this.slice(1)

@app.constant 'routeConfig', (name: name) ->
  ctrl = "Ctrl"
  html = ".html"
  folderRoot = "views/"

  controller: name.capitalize().concat ctrl
  templateUrl: folderRoot.concat name.toLowerCase().replace(/\./g, "/"), html
