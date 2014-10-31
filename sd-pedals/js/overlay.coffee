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

##### I N P U T S

app.directive 'appThrottle', (iRData) ->
    link: (scope, element, attrs) ->
        ir = iRData

        scope.$watch 'ir.Throttle', (n, o) ->
            percent = inputToGToPercent ir.Throttle
            if percent >= 0
                element.css
                    top: (percent*-1) + '%'
                    left: 50 + '%'
                    height: percent + '%'


app.directive 'appBrake', (iRData) ->
    link: (scope, element, attrs) ->
        ir = iRData

        scope.$watch 'ir.Brake', (n, o) ->
            percent = inputToGToPercent ir.Brake
            if percent >= 0
                element.css
                    top: (percent*-1) + '%'
                    height: percent + '%'	
                    
app.directive 'appClutch', (iRData) ->
    link: (scope, element, attrs) ->
        ir = iRData

        scope.$watch 'ir.Clutch', (n, o) ->
            percent = inputToGToPercent ir.Clutch
            if percent >= 0
                element.css
                    top: ((100-percent)*-1) + '%'
                    left: -50 + '%'
                    height: (100-percent) + '%'


app.filter 'input', -> inputToGToPercent

inputToGToPercent = (input) ->
    input*100 

##### / I N P U T S


##### B E S C H L E U N I G U N G

app.directive 'appBeschleunigung', (iRData) ->
    link: (scope, element, attrs) ->
        ir = iRData

        scope.$watch 'ir.LongAccel', (n, o) ->
            percent = accelToGToPercent ir.LongAccel
            if percent < 0
                element.css
                    top: 45 + Math.max(percent,-45) + '%'
            else if percent > 0
                element.css
                    top: 45 + Math.min(percent,45) + '%'
					
        scope.$watch 'ir.LatAccel', (n, o) ->
            percent = accelToGToPercent ir.LatAccel
            if percent < 0
                element.css
                    left: 47 + Math.max(percent,-47) + '%'
            else if percent > 0
                element.css
                    left: 47 + Math.min(percent,47) + '%'

app.filter 'accel', -> accelToGToPercent

accelToGToPercent = (accel) ->
    Math.round((100*(accel/9.81))/6) # Percentage on a scale of 3G

##### / B E S C H L E U N I G U N G

angular.bootstrap document, [app.name]