iR Browser Apps Addons by SuperDiomiro
====================================

These are addons to the [iRacing Browser Apps by Mihail Latyshov](http://ir-apps.kutu.ru/) and are primarily ment to add more features to the existing overlay for first person streamers.

GearSpeed
-------------

Adds an additional blackbox showing the current gear & speed (currently in km/h).

PedalsGforce
-------------

Adds an additional blackbox showing the pedal inputs (throttle, brake, clutch) and a g-force meter.

Usage
=====

1. Install the iRacing Browser Apps by Mihail from [here](http://ir-apps.kutu.ru/).
2. Download the iR Browser Apps Addons by SuperDiomiro [here](http://www.link.com).
3. Extract the folders of the apps you want to use into the apps folder (located in the main folder) of the iR Browser Apps (if it doesn't exist, create it!).
4. Start the iR Browser Apps!

GearSpeed
-------------

1. Copy this link: 'http://localhost:8182/sd_gear-speed/'
2. In OBS add new **CLR Browser** layer and paste it in **URL**.
3. Set **Dimensions** to 300px times 100px.
4. Go to the **CSS** tab and replace all with:

'::-webkit-scrollbar {
  visibility: hidden;
}
body {
  background: inherit !important;
  margin: 0px auto;

}'