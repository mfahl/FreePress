//
//  ContinentMaterial.swift
//  FreePress
//
//  Created by Martin on 17.10.15.
//  Copyright © 2015 MartinMarc. All rights reserved.
//

import Foundation
class ContinentMaterial {
	var name: String
	var countries: [CountryMaterial] = [CountryMaterial]()

	init(name: String) {
		self.name = name
	}
}