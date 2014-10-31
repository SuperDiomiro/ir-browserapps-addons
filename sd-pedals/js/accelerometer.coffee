$('<div ng-controller="CarCtrl" class="pedals"> 
<div class="wrapper"> 
<div app-throttle class="throttle">
</div>
<div app-brake class="brake">
</div>
<div app-clutch class="clutch">
</div>
<div class="clutch-bg">
</div>
<div class="brake-bg">
</div>
<div class="throttle-bg">
</div>
</div>
</div>

<div ng-controller="CarCtrl" class="forces">
<div class="wrapper2"> 
<div app-beschleunigung class="anzeiger">
</div>
</div>').appendTo('body')
