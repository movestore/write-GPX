# Write GPX
MoveApps

Github repository: *github.com/movestore/write-GPX*

## Description
Create a downloadble .gpx file of your tracks.

## Documentation
The input Movement data set is transformed into a spatial points data frame that is then written into a gpx file with the writeOGR function.

Note that the gpx file includes longitude, latitude, timestamp ("time") and animal ID ("name") as default and all additional data attributes only if they are listed in the default XML name schema under http://www.topografix.com/GPX/1/1.

### Input data
moveStack in Movebank format

### Output data
moveStack in Movebank format

### Artefacts
`data.gpx`: GPX file of your input data with major elements "longitude", "latitude", "time" and "name" and additional data attributes as "extensions". See above for restriction of names.

### Settings 
no settings

### Null or error handling:
**Data:** The full input data set is returned for further use in a next App and cannot be empty.
