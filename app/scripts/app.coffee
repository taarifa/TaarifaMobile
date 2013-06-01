'use strict'

angular.module('taarifaApp', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/reports',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/reports/new',
        templateUrl: 'views/newreport.html'
        controller: 'NewReportCtrl'
      .otherwise
        redirectTo: '/reports'
