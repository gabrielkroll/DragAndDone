//
//  FreakoColors.swift
//  Drag And Done
//
//  Created by Gabriel Kroll on 24/02/15.
//  Copyright (c) 2015 Freakotivity. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class FreakoColors : NSObject {

    //// Cache

    private struct Cache {
        static var freakoGreen: UIColor = UIColor(red: 0.102, green: 0.706, blue: 0.267, alpha: 1.000)
        static var freakoDarkBlue: UIColor = UIColor(red: 0.227, green: 0.286, blue: 0.706, alpha: 1.000)
        static var freakoViolet: UIColor = UIColor(red: 0.533, green: 0.251, blue: 0.655, alpha: 1.000)
        static var freakoBlue: UIColor = UIColor(red: 0.169, green: 0.518, blue: 0.827, alpha: 1.000)
        static var freakoOrange: UIColor = UIColor(red: 0.973, green: 0.580, blue: 0.024, alpha: 1.000)
        static var freakoRed: UIColor = UIColor(red: 0.886, green: 0.231, blue: 0.149, alpha: 1.000)
        static var freakoYellow: UIColor = UIColor(red: 0.953, green: 0.792, blue: 0.153, alpha: 1.000)
        static var menuSpaceGray: UIColor = UIColor(red: 0.941, green: 0.941, blue: 0.941, alpha: 1.000)
        static var imageOfCheckInACircle: UIImage?
        static var checkInACircleTargets: [AnyObject]?
    }

    //// Colors

    public class var freakoGreen: UIColor { return Cache.freakoGreen }
    public class var freakoDarkBlue: UIColor { return Cache.freakoDarkBlue }
    public class var freakoViolet: UIColor { return Cache.freakoViolet }
    public class var freakoBlue: UIColor { return Cache.freakoBlue }
    public class var freakoOrange: UIColor { return Cache.freakoOrange }
    public class var freakoRed: UIColor { return Cache.freakoRed }
    public class var freakoYellow: UIColor { return Cache.freakoYellow }
    public class var menuSpaceGray: UIColor { return Cache.menuSpaceGray }

    //// Drawing Methods

    public class func drawFreakoRedCircle() {

        //// Oval Drawing
        var ovalPath = UIBezierPath(ovalInRect: CGRectMake(0, 0, 200, 200))
        FreakoColors.freakoRed.setFill()
        ovalPath.fill()
    }

    public class func drawFreakoOrangeCircle() {

        //// Oval Drawing
        var ovalPath = UIBezierPath(ovalInRect: CGRectMake(0, 0, 200, 200))
        FreakoColors.freakoOrange.setFill()
        ovalPath.fill()
    }

    public class func drawFreakoYellowCircle() {

        //// Oval Drawing
        var ovalPath = UIBezierPath(ovalInRect: CGRectMake(0, 0, 200, 200))
        FreakoColors.freakoYellow.setFill()
        ovalPath.fill()
    }

    public class func drawFreakoGreenCircle() {

        //// Oval Drawing
        var ovalPath = UIBezierPath(ovalInRect: CGRectMake(0, 0, 200, 200))
        FreakoColors.freakoGreen.setFill()
        ovalPath.fill()
    }

    public class func drawFreakoBlueCircle() {

        //// Oval Drawing
        var ovalPath = UIBezierPath(ovalInRect: CGRectMake(0, 0, 200, 200))
        FreakoColors.freakoBlue.setFill()
        ovalPath.fill()
    }

    public class func drawFreakoDarkBlueCircle() {

        //// Oval Drawing
        var ovalPath = UIBezierPath(ovalInRect: CGRectMake(0, 0, 200, 200))
        FreakoColors.freakoDarkBlue.setFill()
        ovalPath.fill()
    }

    public class func drawFreakoVioletCircle() {

        //// Oval Drawing
        var ovalPath = UIBezierPath(ovalInRect: CGRectMake(0, 0, 200, 200))
        FreakoColors.freakoViolet.setFill()
        ovalPath.fill()
    }

    public class func drawCheckInACircle() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()


        //// Shadow Declarations
        let shadow = UIColor.blackColor().colorWithAlphaComponent(0.5)
        let shadowOffset = CGSizeMake(0.6, 0.6)
        let shadowBlurRadius: CGFloat = 2
        
        // DON'T SEE THE SHADOW

        //// Oval Drawing
        var ovalPath = UIBezierPath()
        ovalPath.moveToPoint(CGPointMake(1, 20))
        ovalPath.addCurveToPoint(CGPointMake(20, 39), controlPoint1: CGPointMake(1, 30.49), controlPoint2: CGPointMake(9.51, 39))
        ovalPath.addCurveToPoint(CGPointMake(39, 20), controlPoint1: CGPointMake(30.49, 39), controlPoint2: CGPointMake(39, 30.49))
        ovalPath.addCurveToPoint(CGPointMake(20, 1), controlPoint1: CGPointMake(39, 9.51), controlPoint2: CGPointMake(30.49, 1))
        ovalPath.addCurveToPoint(CGPointMake(4.11, 9.58), controlPoint1: CGPointMake(13.35, 1), controlPoint2: CGPointMake(7.5, 4.41))
        ovalPath.addCurveToPoint(CGPointMake(20, 27.5), controlPoint1: CGPointMake(3.07, 11.17), controlPoint2: CGPointMake(20, 27.5))
        ovalPath.addLineToPoint(CGPointMake(33, 12))
        ovalPath.lineCapStyle = kCGLineCapRound;

        ovalPath.lineJoinStyle = kCGLineJoinRound;

        CGContextSaveGState(context)
        CGContextSetShadowWithColor(context, shadowOffset, shadowBlurRadius, (shadow as UIColor).CGColor)
        UIColor.whiteColor().setStroke()
        ovalPath.lineWidth = 1.5
        ovalPath.stroke()
        CGContextRestoreGState(context)
    }

    //// Generated Images

    public class var imageOfCheckInACircle: UIImage {
        if Cache.imageOfCheckInACircle != nil {
            return Cache.imageOfCheckInACircle!
        }

        UIGraphicsBeginImageContextWithOptions(CGSizeMake(40, 40), false, 0)
            FreakoColors.drawCheckInACircle()

        Cache.imageOfCheckInACircle = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfCheckInACircle!
    }

    //// Customization Infrastructure

    @IBOutlet var checkInACircleTargets: [AnyObject]! {
        get { return Cache.checkInACircleTargets }
        set {
            Cache.checkInACircleTargets = newValue
            for target: AnyObject in newValue {
                target.setImage(FreakoColors.imageOfCheckInACircle)
            }
        }
    }

}



extension UIColor {
    func colorWithHue(newHue: CGFloat) -> UIColor {
        var saturation: CGFloat = 1.0, brightness: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getHue(nil, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        return UIColor(hue: newHue, saturation: saturation, brightness: brightness, alpha: alpha)
    }
    func colorWithSaturation(newSaturation: CGFloat) -> UIColor {
        var hue: CGFloat = 1.0, brightness: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getHue(&hue, saturation: nil, brightness: &brightness, alpha: &alpha)
        return UIColor(hue: hue, saturation: newSaturation, brightness: brightness, alpha: alpha)
    }
    func colorWithBrightness(newBrightness: CGFloat) -> UIColor {
        var hue: CGFloat = 1.0, saturation: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getHue(&hue, saturation: &saturation, brightness: nil, alpha: &alpha)
        return UIColor(hue: hue, saturation: saturation, brightness: newBrightness, alpha: alpha)
    }
    func colorWithAlpha(newAlpha: CGFloat) -> UIColor {
        var hue: CGFloat = 1.0, saturation: CGFloat = 1.0, brightness: CGFloat = 1.0
        self.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: nil)
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: newAlpha)
    }
    func colorWithHighlight(highlight: CGFloat) -> UIColor {
        var red: CGFloat = 1.0, green: CGFloat = 1.0, blue: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return UIColor(red: red * (1-highlight) + highlight, green: green * (1-highlight) + highlight, blue: blue * (1-highlight) + highlight, alpha: alpha * (1-highlight) + highlight)
    }
    func colorWithShadow(shadow: CGFloat) -> UIColor {
        var red: CGFloat = 1.0, green: CGFloat = 1.0, blue: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return UIColor(red: red * (1-shadow), green: green * (1-shadow), blue: blue * (1-shadow), alpha: alpha * (1-shadow) + shadow)
    }
}

@objc protocol StyleKitSettableImage {
    func setImage(image: UIImage!)
}

@objc protocol StyleKitSettableSelectedImage {
    func setSelectedImage(image: UIImage!)
}
