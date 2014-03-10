'use strict'

describe 'Routes: Otherwise: ', ()->
  beforeEach module 'genApp'

  $state       = null
  routes       = null
  $httpBackend = null
  $location    = null

  beforeEach inject (_$state_, _routes_, _$httpBackend_, _$location_)->
    $state       = _$state_
    routes       = _routes_
    $httpBackend = _$httpBackend_
    $location    = _$location_

  it 'should defined route of the applications', ()->
    expect(routes).toBeDefined()
    expect(routes.otherwise).toBeDefined()
    expect(routes.otherwise).toEqual name: "otherwise", url: "/"

  it 'should redirect to application root when url not exist', ()->
    $httpBackend.whenGET("views/application.html").respond {}

    $location.path('/otherwise');
    $httpBackend.flush()
    expect($state.current.name).toBe routes.application.name
