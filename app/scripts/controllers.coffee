'use strict'

angular.module('taarifaApp')
  .controller 'MainCtrl', ($scope, Report) ->
    $scope.reports = Report.query()
