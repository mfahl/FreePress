//
//  ColorSchemeProvider.swift
//  FreePress
//
//  Created by Martin on 17.10.15.
//  Copyright © 2015 MartinMarc. All rights reserved.
//

import UIKit

class ColorSchemeProvider {
	private static let accentColor: UIColor = UIColor(red: 0x44/255, green: 0x8a/255, blue: 0xff/255, alpha: 1.000)
	private static let lightBackgroundColor: UIColor = UIColor(red: 0xcf/255, green: 0xd8/255, blue: 0xdc/255, alpha: 1.000)
	private static let darkBackgroundColor: UIColor = UIColor(red: 0x60/255, green: 0x7d/255, blue: 0x8b/255, alpha: 1.000)
	
	class func lightBackground() -> UIColor {
		return lightBackgroundColor
	}
	
	class func darkBackground() -> UIColor {
		return darkBackgroundColor
	}
	
	class func accent() -> UIColor {
		return accentColor
	}

}