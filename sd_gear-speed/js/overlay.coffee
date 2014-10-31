window.app = angular.module 'app', [
    'ngAnimate'
    'ngSanitize'
]

app.service 'iRData', ($rootScope, $location) ->
    fps = parseInt($location.search().fps) || 10
    fps = Math.max 30, Math.min 60, fps
    ir = new IRacing \
        # request params
        [
            'Speed'
            'Gear'
            'IsOnTrack'
            'Throttle'
            'Brake'
            'Clutch'
            'LatAccel'
            'LongAccel'
        ],
        # request params once
        [
        ],
        fps

    ir.onConnect = ->
        ir.data.connected = true
        $rootScope.$apply()

    ir.onDisconnect = ->
        ir.data.connected = false
        $rootScope.$apply()

    ir.onUpdate = (keys) ->
        $rootScope.$apply()

    return ir.data

app.controller 'CarCtrl', ($scope, $element, iRData) ->
    $scope.ir = iRData
    $scope.$watch 'ir.IsOnTrack', (n, o) ->
        $element.toggleClass 'ng-hide', not n

# Controller for testing when not on track/live etc.
# app.controller 'NoCarCtrl', ($scope, $element, iRData) ->
#     $scope.ir = iRData




app.directive 'appCargear', (iRData) ->
    link: (scope, element, attrs) ->
        ir = iRData
        scope.$watch 'ir.Gear', (n, o) ->
            gear = n
            element.html "#{if n>=0 then gear.toFixed 0 else 'R'}"
			
			
app.directive 'appCarspeed', (iRData) ->
    link: (scope, element, attrs) ->
        ir = iRData
        scope.$watch 'ir.Speed', (n, o) ->
            speed = n
            element.text "#{((speed*3.6).toFixed 0)} km/h"

angular.bootstrap document, [app.name]