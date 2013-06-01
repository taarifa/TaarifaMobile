'use strict'

angular.module('taarifaApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.reports = [
        title: "Flooding"
        description: "My house is under water!"
      ,
        title: "Pipe burst"
        description: "Water on the streets!"
    ]
