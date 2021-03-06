//
//  BackgroundView.swift
//  FreePress
//
//  Created by Martin on 17.10.15.
//  Copyright © 2015 MartinMarc. All rights reserved.
//

import UIKit

class BackgroundView: UIView {

    override func drawRect(rect: CGRect) {
			// Background View

			//// Color Declarations
			//let lightPurple: UIColor = UIColor(red: 0xec/255, green: 0xef/255, blue: 0xf1/255, alpha: 1.000)

			let context = UIGraphicsGetCurrentContext()

			//// Gradient Declarations
			let purpleGradient = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [ColorSchemeProvider.lightBackground().CGColor, ColorSchemeProvider.darkBackground().CGColor], [0, 1])

			//// Background Drawing
			let backgroundPath = UIBezierPath(rect: CGRectMake(0, 0, self.frame.width, self.frame.height))
			CGContextSaveGState(context)
			backgroundPath.addClip()
			CGContextDrawLinearGradient(context, purpleGradient,
					CGPointMake(160, 0),
					CGPointMake(160, 568),
					[.DrawsBeforeStartLocation, .DrawsAfterEndLocation])
			CGContextRestoreGState(context)
    }

}
