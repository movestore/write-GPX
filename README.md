# Write GPX
MoveApps

Github repository: *github.com/movestore/write-GPX*

## Description
This App takes movement data and exports all locations as a standard downloadble `.gpx` file that can be viewed and used in common GIS and GPS tools like QGIS, GPX viewers, navigation devices Garmin, Strava, and mapping services.

## Documentation
GPX (the GPS Exchange Format) is a light-weight XML data format for the interchange of GPS data (waypoints, routes, and tracks) between applications and Web services on the Internet.
GPX is being used by hundreds of software programs and Web services for GPS data exchange, mapping, and geocaching.(more information: http://www.topografix.com )

This App exports the location data as GPX waypoints (contains, for each point, the coordinates, timestamp, individual ID,
and all additional attributes supported via GPX extensions if they are listed in the default XML name schema under http://www.topografix.com/GPX/1/1/)

### Application scope
#### Generality of App usability
This App was developed for any taxonomic group.
#### Required data properties
The App should work for any kind of (location) data.

### Input data
move2::move2_loc

### Output data
move2::move2_loc

### Artefacts
`GPX_data.gpx`: GPX file of your input data with major elements "longitude", "latitude", "time" and "name" and additional data attributes as "extensions".

### Settings 
This App has no user-configurable settings.

### Changes in output data
The input data remains unchanged.

### Most common errors


### Null or error handling:
**CRS / GPX errors:** If CRS transformation or GPX writing fails, the error can be found in the logs file, no GPX file is created, and the App returns the unmodified input data.
