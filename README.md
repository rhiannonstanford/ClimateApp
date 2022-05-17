#  Clima

## App 📱

This weather app is dark-mode enabled.  A user is able to check the weather for a current location based on the GPS data from the iPhone.  User is also able to search by city manually.

## Highlights

* A dark-mode enabled app.
* Uses vector images as image assets.
* Interfaces with external API to access weather data. 
* Uses the UITextField to get user input. 
* Uses the delegate pattern.
* Swift protocols and extensions. 
* Swift guard keyword. 
* Swift computed properties.
* Swift closures and completion handlers.
* Uses URLSession to network and make HTTP requests.
* Parse JSON with the native Encodable and Decodable protocols. 
* Uses Grand Central Dispatch to fetch the main thread.
* Uses Core Location to get the current location from the phone GPS. 

### Condition Codes
```
switch conditionID {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
```

