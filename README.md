# MJPOPAnim
Facebook POP animations easily take up 5-6 lines of code. MJPOPAnim does it in one line.

### Usage
Simple: 
```swift
MJPOPSpring(view: myNSView, propertyName: kPOPLayerPositionY, toValue: 0)
```
Advanced: 
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

### Installation
Copy the swift file into your project
