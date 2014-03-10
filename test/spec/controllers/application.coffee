'use strict'

describe 'Controller: ApplicationCtrl', () ->
  beforeEach module 'genApp'

  scope = null
  ApplicationCtrl = null

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ApplicationCtrl = $controller 'ApplicationCtrl',
      $scope: scope

  it 'should exist ApplicationCtrl', () ->
    expect(scope).toBeDefined()
    expect(ApplicationCtrl).toBeDefined()
