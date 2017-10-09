# iOS-11
Welcome, Here's a collection of iPhone Apps I built demonstrating my understanding of the new features that come in iOS 11 & Swift 4.


## BBall Pick Ups
Learned the foundation of ios development. Creating Storyboards, View Controllers, Interface Design, swap between screens and pass data between them.

### Built With
* [Frames](https://developer.apple.com/documentation/uikit/uiview/1622621-frame) - Adding contstraints programmatically.
* [Auto Layout](https://developer.apple.com/documentation/uikit/view_management/auto_layout) - Adding support for multiple screens.
* [Stack View](https://developer.apple.com/documentation/uikit/uistackview) - Adding layout collections.
* [Segues](https://developer.apple.com/documentation/uikit/uistoryboardsegue) - Connecting segues traditionally and prgramatically.
* [IBActions](https://developer.apple.com/documentation/appkit/constants/interface_builder_constants/ibaction) - Connecting points between user interface elements and app code.

![alt text](https://www.noelfranceschi.com/iosApps/bball-pick-ups.png)



## Dev Profile
Learned to create adaptive interfaces that change based on screen size.

### Built With
* [Auto Layout](https://developer.apple.com/documentation/uikit/view_management/auto_layout) - Adding support for multiple iPhone & iPad screens.

![alt text](https://www.noelfranceschi.com/iosApps/dev-profile.png)



## Window Shopper
Fully functional app that assist you in knowing how much time it would take you to purchase an item. Put in a price for an item and your hourly wage that you get at your job to see how long it would take you to be able to afford that item.

### Built With
* [Input Accessory views](https://developer.apple.com/documentation/uikit/uitextfield/1619627-inputaccessoryview) - Created UIButton element programmatically and attached it to the textField accessory.
* [DrawRect](https://developer.apple.com/documentation/uikit/uiview/1622529-drawrect) - Created UILabel '$' and added to the left of the textfields.
* [Unit Testing](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/testing_with_xcode/chapters/04-writing_tests.html) - Testing app data.
* Custom TextFields
* IBDesignable - Created custom elements and the attributes.

![alt text](https://www.noelfranceschi.com/iosApps/shopper.png)



## Coder Swag
Minor functionality store front app demonstrating different UIViews.

### Built With
* [Table View](https://developer.apple.com/documentation/uikit/uitableviewcontroller/1614753-tableview) - Adding Table views.
* [TableView Delegate](https://developer.apple.com/documentation/uikit/uitableviewdelegate)
* [TableView DataSource](https://developer.apple.com/documentation/uikit/uitableviewdatasource)
* [Collection View](https://developer.apple.com/documentation/uikit/uicollectionview) - Adding grid views.

![alt text](https://www.noelfranceschi.com/iosApps/coderswag.png)



## Talk Smack
Fully functional Slack app clone. Users can create/login accounts, Choose a username avatar and color. It also enables users to create chat rooms and communciate with users in real time!

### Built With
* [SWReveal](https://github.com/John-Lluch/SWRevealViewController) - Custom side menu view.
* [Cocoa Pods](https://cocoapods.org/) - Custom libraries for iOS.
* [Swifty Json](https://github.com/SwiftyJSON/SwiftyJSON) - Makes it easier to work with Json data.
* [Alamofire](https://github.com/Alamofire/Alamofire) - Makes it easier to work with web request.
* [Sockets.io](https://socket.io/) - Enables real-time bi-directional event-based communication.
* [Heroku](https://www.heroku.com/) - Container-based cloud Platform as a Service (PaaS)
* [Postman](https://www.getpostman.com/) - Used for local API testing.
* Custom API - Custom API built with Mongo.db.

![alt text](https://www.noelfranceschi.com/iosApps/talksmack.png)



## Pixel City
A simple map app that gets your current location and displays a collection of images when a pin is dropped on the map.

### Built With
* [MapKit](https://developer.apple.com/documentation/mapkit/mkmapview) - Map kit view.
* [Location Servcies](https://developer.apple.com/documentation/corelocation/getting_the_user_s_location/using_the_standard_location_service) - Enables user location
* [UIGestures](https://developer.apple.com/documentation/uikit/uigesturerecognizer) - Enables gestures functionality.
* [Flickr API](https://www.flickr.com/services/api/) - Used to pull images to app.
* [Alamofire](https://github.com/Alamofire/Alamofire) - Makes it easier to work with web request.
* [Alamofire Images](https://github.com/Alamofire/AlamofireImage) - An image component library for Alamofire.
* [3D Touch](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/Adopting3DTouchOniPhone/3DTouchAPIs.html) - Sneek peek an image in collection.
* Custom View Controller - Added view controller and view programatically.

![alt text](https://www.noelfranceschi.com/iosApps/pixel-city.png)



## DailyDose
This app demonstrates a non-consumable IAP where you can remove ads from an app. IF user deletes app later on, users can re download the app and click a button to restore their purchase.

### Built With
* [Googlemobile Ads framework](https://developers.google.com/admob/ios/download) - Used to display Ads

![alt text](https://www.noelfranceschi.com/iosApps/dailydose.png)



## GoalPost
A simple C.R.U.D App. Add goals and keep track of them.

### Built With
* [CoreData](https://developer.apple.com/documentation/coredata) - Managing the model layer objects in the application 

![alt text](https://www.noelfranceschi.com/iosApps/goalPost.png)



## BreakPoint
A simple social media app for developers. Users can register/login and communicate with other developers. It Has a main full feed. Users can add groups, invite other users that are signed up and chat privately.

### Built With
* [UITabBar](https://developer.apple.com/documentation/uikit/uitabbar) - Displays one or more buttons in a tab bar for selecting between different views.
* [FireBase](https://firebase.google.com/) - Backend datbase for application.
* [Cocoa Pods](https://cocoapods.org/) - Custom libraries for iOS.

![alt text](https://www.noelfranceschi.com/iosApps/breakpoint.png)



## Visions
This app demonstrates the functionality of CoreML. This app utilizes the camera to scan an object on an image that you take and pass that through a machine learning model to predict the name of that object. Then It speaks and displays the name and the confidence percentage of the object.

### Built With
* [CoreML](https://developer.apple.com/documentation/coreml) - Integrates machine learning models into this app.
* [Vison](https://developer.apple.com/documentation/vision) - High-performance image analysis.
* [AVFoundation](https://developer.apple.com/av-foundation/) - Add Media functionality to apps.
* [AVSpeechSyntizer](https://developer.apple.com/documentation/avfoundation/avspeechsynthesizer) - Add Speech functionality to apps.
* [SqueezeNet](https://developer.apple.com/machine-learning/) - ML Model that detects the dominant objects present in an image from a set of 1000 categories such as trees, animals, food, vehicles, people, and more.


![alt text](https://www.noelfranceschi.com/iosApps/visions.png)



## Ramp Park
This app demonstrates the functionality of ARKit. This app lets a user create a skate park anywhere they like using the camera! Users can select 1 of 3 models and place it on the screen using the surface detection technology provided by apple inc. You can also rotate the model & move it around for better placement. If your dont like where it's placed, simple delete it from the screen and try again.

### Built With
* [ARKit](https://developer.apple.com/arkit/) - Augmented reality framework.
* [SceneKit](https://developer.apple.com/scenekit/) - 3D graphics framework.
* 3D Models - provided online


![alt text](https://www.noelfranceschi.com/iosApps/rampPark.png)
