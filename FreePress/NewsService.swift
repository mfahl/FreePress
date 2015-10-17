//
//  NewsService.swift
//  FreePress
//
//  Created by Martin on 17.10.15.
//  Copyright © 2015 MartinMarc. All rights reserved.
//

import Foundation
class NewsService {
	class func getAll() -> [NewsMaterial] {
		var news = [NewsMaterial]()
		
		let endpoint = NSURL(string: "https://raw.githubusercontent.com/mfahl/FreePress/master/newsdata.json")
		let data = NSData(contentsOfURL: endpoint!)
		
		do {
			if let json: NSDictionary = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as? NSDictionary {
						if let items = json["news"] as? NSArray {
								for item in items {
										print(item)
								}
						}
				}
		} catch {
				print("error loading json from \(endpoint)")
		}
			
		
		
		return news
	}
}