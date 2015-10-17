//
//  NewsMaterial.swift
//  FreePress
//
//  Created by Martin on 17.10.15.
//  Copyright © 2015 MartinMarc. All rights reserved.
//

import UIKit

class NewsMaterial {
	var title: String
	var text: String
	var image: UIImage?
	var author: AuthorMaterial?

	init(title: String, text: String) {
		self.title = title
		self.text = text
	}
	
	init(json: NSDictionary) {
			self.title = json["title"] as! String
			self.text = json["text"] as! String
			if let imageString = json["image"] as? String {
				if let url = NSURL(string:imageString) {
					if let data = NSData(contentsOfURL: url) {
						self.image = UIImage(data: data)
					}
				}
			}
		
	}
}