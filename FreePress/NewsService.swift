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
		
		let endpoint = NSURL(string: "http://meton.dynamicmetonsolutions.com/~msf/newsdata.json")
		let data = NSData(contentsOfURL: endpoint!)
		
		do {
			if let json: NSDictionary = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as? NSDictionary {
						if let items = json["news"] as? NSArray {
								for item in items {
										news.append(NewsMaterial(json: item as! NSDictionary))
								}
						}
				}
		} catch {
				print("error loading json from \(endpoint)")
		}
			
		
		
		return news
	}
}