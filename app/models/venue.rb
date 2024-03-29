class Venue < ActiveRecord::Base
  # has_secure_password
  has_many :users
  has_many :tours, through: :users








  
  # DB = {:conn => SQLite3::Database("db/venues.db")}

  # def self.create(name, phone, website, description, postal_code, state, city, address, longitude, latitude)
  #   venue = Venue.new(name, phone, website, description, postal_code, state, city, address, longitude, latitude)
  #   venue.save
  #   venue
  # end

  # Venue.create(name: "Rockwood Music Hall", phone: "212.477.4155", website: "http://www.rockwoodmusichall.com", description: "<p>They host live music 7 nights a week on all 3 stages; stage 3 is reserved for softer acts. All shows are FREE unless otherwise noted.</p>", postal_code: "10002", state: "New York", city: "New York", address: "196 Allen Street", longitude: -73.9887, latitude: 40.7224,)
  # Venue.create(name: "Alley Cat Restaurant & Bar", phone: "770.834.2642", website: "http://www.facebook.com/Alley-Cat-70555334926/", description: "Alley Cat Restaurant &amp; Bar in the heart of downtown Carrollton, Georgia is one of West Georgia's favorite locations for local nightlife gatherings, live music, good food, and a playful atmosphere.\"&nbsp;Live music is typically held on Friday and Saturday nights, but they are flexible.</p>", postal_code: "30117", state: "Georgia", city: "Carrollton", address: "120 Newnan Street", longitude: -85.0743, latitude: 3.5803,)
  # Venue.create(name: "Red Rooster Coffee House", phone: "605.225.6603", website: "http://www.redroostercoffeehouse.com", description: "<p>This is a coffee shop/music venue. Most shop>They host live music 7 nights a week on all 3 stages; staws take place on Friday and Saturday nights but they can be held any night. Regular events include Tuesdays: Old Time Jam - 2:30pm - 5:30pm, Thursdays: Art &amp; Music Night - 5:30pm - 8:30pm, 2nd &amp; 4th Thursdays: Open Mic Night - 7pm. They avoid Wednesday nights and are closed on Sundays.</p>", postal_code: "57401", state: "South Dakota", city: "Aberdeen", address: "218 S. Main Street", longitude: -98.4884742, latitude: 45.4624404,)
  # Venue.create(name: "Woodlands Tavern", phone: "614.299.4987", website: "http://www.woodlandstavern.com", description: "<p>Live music up to 7 nights a week.</p>", postal_code: "43212", state: "Ohio", city: "Columbus", address: "1200 W. Third Avenue", longitude: -83.0376, latitude: 39.9851)
  # Venue.create(name: "Knitting Factory", phone: "347.529.6696", website: "http://bk.knittingfactory.com", description: "<p>\"Serving music and beer all night every night.\"&nbsp;<a href=\"https://www.indieonthemove.com/venues?q=knitting%20factory&amp;sort_by=relevance&amp;sort_order=descending\">Browse other Knitting Factory locations</a>.</p>", postal_code: "11211", state: "New York", city: "Brooklyn", address: "361 Metropolitan Avenue", longitude: -73.9557, latitude: 40.7142)
  # Venue.create(name: "Molly's Bar", phone: "505.281.9911", website: "http://www.mollys-music.com", description: "<p>\n\tThey can host live music Monday-Saturday nights. Most Mondays are reserved for a Bluegrass jam. Shows take place outside when the weather is nice.</p>", postal_code: "87059", state: "New Mexico", city: "Tijeras", address: "546 State Highway 333", longitude: -106.381, latitude: 35.084)
  # Venue.create(name: "Celtic Irish Pub", phone: "228.938.6800", website: "http://www.celticirishpub.com", description: "<p>\r\n\t&quot;A neighborhood bar in Pascagoula, MS providing a variety of beers and cocktails as well as local entertainment including bands and karaoke.&quot; Live music up to 7 nights a week with Wednesdays being reserved for open mic.</p>", postal_code: "39581", state: "Mississippi", city: "Pascagoula", address: "4901 Chicot Road", longitude: -88.5275, latitude: 30.381)
  # Venue.create(name: "The Town Pump Tavern", phone: "828.357.5075", website: "http://www.facebook.com/TheTownPumpTavern", description: "<p>Live music up to 7 nights a week with open mic on Wednesdays.</p>", postal_code: "28711", state: "North Carolina", city: "Black Mountain", address: "135 Cherry Street", longitude: -82.3203, latitude: 35.6162)
  # Venue.create(name: "Buzzbin Art & Music Shop", phone: "330.754.6770", website: "https://buzzbincanton.com/", description: "<p>\"The Buzzbin Art &amp; Music Shop is a music venue born out a local Arts &amp; Entertainment paper, Buzzbin Magazine.\" Shows can be held up to 7 nights a week.</p>", postal_code: "44702", state: "Ohio", city: "Canton", address: "331 Cleveland Avenue NW", longitude: -81.3759, latitude: 40.8007)
  # Venue.create(name: "Be Here Now", phone: "765.216.6754", website: "http://beherenowmusic.com", description: "<p>Live music is held on Monday, Tuesday, Thursday, Friday and Saturday nights, with Tuesdays being reserved for open mic and special guests.</p>", postal_code: "47303", state: "Indiana", city: "Muncie", address: "505 N. Dill Street", longitude: -85.4048, latitude: 40.1979)
  # Venue.create(name: "The Purple Fiddle", phone: "304.463.4040", website: "http://www.purplefiddle.com", description: "", postal_code: "26292", state: "West Virginia", city: "Thomas", address: "96 East Avenue", longitude: -79.4989, latitude: 39.1492)
  # Venue.create(name: "Dickson Street Pub", phone: "479.935.3579", website: "http://www.dicksonstreetpub.com", description: "<p>Live music is held on Thursday, Friday, and Saturday nights 7:30-11:30 PM.</p>", postal_code: "72701", state: "Arkansas", city: "Fayetteville", address: "303 W. Dickson Street", longitude: -94.1632, latitude: 36.0664)
  # Venue.create(name: "The Soul Bar", phone: "", website: "http://www.soulbar.com", description: "<p>Shows can take place any night of the week, but most fall on Friday and Saturday nights.<br>Additional Booking Emails: coco@soulbar.com and info@?</p>", postal_code: "30901", state: "Georgia", city: "Augusta", address: "984 Broad Street", longitude: -81.9697, latitude: 33.4763)
  # Venue.create(name: "O'Malley's Pub", phone: "253.627.9403", website: "http://www.facebook.com/allthewhisky", description: "p>This friendly neighborhood bar hosts live music on Friday and Saturday nights.</p>", postal_code: "98406", state: "Washington", city: "Tacoma", address: "2403 6th Avenue", longitude: -122.469, latitude: 47.2554)
  # Venue.create(name: "Red Brick Bar", phone: "405.579.6227", website: "http://www.facebook.com/pages/Red-Brick-Bar/416655671758921", description: "<p>\n\tLive music can be held any night of the week. Friday night shows tend to be Singer-Songwriters from 7-9 PM as they have karaoke later in the evening. Tuesday shows are sporadic.</p>", postal_code: "73069", state: "Oklahoma", city: "Norman", address: "311 E. Main Street", longitude: -97.4402, latitude: 35.2226)

end