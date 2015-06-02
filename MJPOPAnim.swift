import Cocoa

class MJPOPSpring: POPSpringAnimation {
    init(view:NSView,
        propertyName : String? = nil,
        toValue _toValue : AnyObject? = nil,
            repeatForever _repeatForever:Bool? = nil,
            repeatCount _repeatCount: Int? = nil,
            springBounciness _springBounciness: CGFloat? = nil,
            springSpeed _springSpeed : CGFloat? = nil,
            dynamicsTension _dynamicsTension: CGFloat? = nil,
            dynamicsFriction _dynamicsFriction: CGFloat? = nil,
            dynamicsMass _dynamicsMass: CGFloat? = nil,
            animationName : String = "animation",
            runNow : Bool = true
        ) {
            super.init()
            
            if propertyName != nil {
                self.property = POPAnimatableProperty.propertyWithName(propertyName) as! POPAnimatableProperty
                }
            
            self.toValue = _toValue != nil ? _toValue! : self.toValue
            self.repeatCount = _repeatCount != nil ? _repeatCount! : self.repeatCount
            self.repeatForever = _repeatForever != nil ? _repeatForever! : self.repeatForever
            self.springBounciness = _springBounciness != nil ? _springBounciness! : self.springBounciness
            self.springSpeed = _springSpeed != nil ? _springSpeed! : self.springSpeed
            self.dynamicsTension = _dynamicsTension != nil ? _dynamicsTension! : self.dynamicsTension
            self.dynamicsFriction = _dynamicsFriction != nil ? _dynamicsFriction! : self.dynamicsFriction
            self.dynamicsMass = _dynamicsMass != nil ? _dynamicsMass! : self.dynamicsMass
            
            if !view.wantsLayer { view.wantsLayer = true }
            
            if runNow {
                view.layer?.pop_addAnimation(self, forKey: animationName)
                }
    }
}
