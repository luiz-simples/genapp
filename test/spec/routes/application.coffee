'use strict'

describe 'Routes: Application: ', ()->
  beforeEach module 'genApp'

  $state       = {}
  routes       = {}
  $httpBackend = {}

  beforeEach inject (_$state_, _routes_, _$httpBackend_)->
    $state       = _$state_
    routes       = _routes_
    $httpBackend = _$httpBackend_

  it 'should defined route of the applications', ()->
    expect(routes.application).toBeDefined();
    expect(routes.application).toEqual name: "application", url: "/"

  it 'should respond to URL', ()->
    expect($state.href(routes.application.name)).toEqual('#/');

  it 'should load the template and go to the application url', ()->
    $httpBackend.whenGET("views/application.html").respond {}

    $state.go routes.application.name
    $httpBackend.flush();
    expect($state.current.name).toBe routes.application.name
