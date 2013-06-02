'use strict'

angular.module('reportService', ['ngResource'])
  .factory 'Report', ($resource) ->
    $resource 'http://api.taarifa.org/reports/:reportId', {},
      query:
        method: 'JSONP'
        params:
          callback: 'JSON_CALLBACK'
        isArray: true
