# MJPOPAnim
Facebook POP animations easily take up 5-6 lines of code. MJPOPAnim does it in one line.

### Usage
####
```swift
MJPOPSpring(view: myNSView, propertyName: kPOPLayerPositionY, toValue: 0)
```
####
```swift
MJPOPSpring(view: myNSView, 
          propertyName: kPOPLayerPositionY, 
          toValue: 0, 
          repeatForever: false, 
          repeatCount: 6, 
          springBounciness: 31, 
          springSpeed: 0.6, 
          dynamicsTension: 32, 
          dynamicsFriction: 6, 
          dynamicsMass: 43, 
          animationName: "jumptobottom")
```

#### Super advanced
If you want to set properties that are not in the initializer, like `completionBlock`, you can do this: 

```swift
var anim = MJPOPSpring(view: myNSView, propertyName: kPOPLayerPositionY, toValue: 0, runNow:false)
anim.completionBlock = {...}
myNSView.layer?.pop_add...etc
```

### Installation
Copy the swift file into your project
