'use strict'

angular.module('taarifaApp')

  .controller 'MainCtrl', ($scope, Report) ->
    $scope.reports = Report.query()

  .controller 'NewReportCtrl', ($scope, $location, Report) ->
    $scope.save = () ->
      Report.save $scope.report, (report) ->
        console.log report
        $location.path '/reports'
