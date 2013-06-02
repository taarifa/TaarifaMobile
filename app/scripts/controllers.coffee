'use strict'

angular.module('taarifaApp')

  .controller 'MainCtrl', ($scope, Report) ->
    $scope.reports = Report.query()

  .controller 'NewReportCtrl', ($scope, $location, Report, geolocation) ->
    $scope.position = geolocation.position()
    $scope.save = () ->
      $scope.position.then (pos) ->
        $scope.report.latitude = pos.coords.latitude
        $scope.report.longitude = pos.coords.longitude
        console.log $scope.report
        Report.save $scope.report, (report) ->
          console.log report
          $location.path '/reports'
      , (reason) ->
        console.log 'Could not determine your location:', reason
