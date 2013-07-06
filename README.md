#talkypi
Do you need to be notified when Something Interesting&trade; happens on your headless [Raspberry Pi](http://www.raspberrypi.org) system?  You've come to the right place.  `talkypi` is a tiny ruby script that leverages the power of [Prowl](http://www.prowlapp.com) to send notifications to iOS (and [other](http://www.prowlapp.com/apps.php)) devices.

##Prerequisites
You'll need a copy of [Ruby](http://www.ruby-lang.org) on your Raspberry Pi and the [Prowl app](http://click.linksynergy.com/fs-bin/click?id=tspFh8jh3l4&subid=&offerid=146261.1&type=10&tmpid=3909&RD_PARM1=http%3A%2F%2Fitunes.apple.com%2Fus%2Fapp%2Fprowl-growl-client%2Fid320876271%3Fmt%3D8%2526uo%3D4) installed on your iOS device.  Make sure you register your device with Prowl correctly in order to receive notifications on it.

##Configuration

Configure `talkypi` like so:

* Login to your [Prowl acocunt](http://www.prowlapp.com) account, click the **API Keys** tab at the top right of the page, then click **Generate Key** under the **Generate a new API key** section (you may wish to give the new key a memorable name for future reference)
* Copy the new API key 
* Create a `.talkypi` file in your home directory and paste the API key into it

##Usage
Using `talkypi` is easy:

```
$ talkypi [event title] [description]
```

The notification will be delivered to any devices you've registered with Prowl.

You can call `talkypi` from shell scripts or cron jobs.  Let your imagination run wild!

##Acknowledgements
`talkypi` makes use of the following libraries:
* [Prowl Ruby wrapper](https://github.com/augustl/ruby-prowl) by August Lilleaas

##License
`talkypi` is provided under the terms of the [MIT License](http://opensource.org/licenses/mit-license.php).

##Comments or suggestions?
Email me at [marc.ransome@fidgetbox.co.uk](mailto://marc.ransome@fidgetbox.co.uk) with bugs, feature requests or general comments and follow [@marcransome](http://www.twitter.com/marcransome) for updates.
