//
//  NewsMaterial.swift
//  FreePress
//
//  Created by Martin on 17.10.15.
//  Copyright © 2015 MartinMarc. All rights reserved.
//

import Foundation
class NewsMaterial {
	var title: String
	var text: String
	var author: AuthorMaterial?

	init(title: String, text: String) {
		self.title = title
		self.text = text
	}
}