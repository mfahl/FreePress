//
//  ContinentService.swift
//  FreePress
//
//  Created by Martin on 17.10.15.
//  Copyright © 2015 MartinMarc. All rights reserved.
//

import Foundation
class ContinentService {
	class func getAll() -> [ContinentMaterial] {
		var continents: [ContinentMaterial] = [ContinentMaterial]()
		let africa = ContinentMaterial(name: "Africa")
		africa.countries.append(CountryMaterial(name: "South Africa"))
		
		let asia = ContinentMaterial(name: "Asia")
		asia.countries.append(CountryMaterial(name: "China"))

		let europe = ContinentMaterial(name: "Europe")
		europe.countries.append(CountryMaterial(name: "Germany"))
		europe.countries.append(CountryMaterial(name: "United Kingdom"))
		europe.countries.append(CountryMaterial(name: "France"))
		
		continents.append(africa)
		continents.append(asia)
		continents.append(europe)
		return continents
	}
}