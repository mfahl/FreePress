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
		news.append(NewsMaterial(title: "Wanna quit your job and become Upwork freelancer? Do not do that!", text: "Almost every day I receive job offers on my 5 star odesk (upwork) profile. I do not search anything manually, clients contacting me directly. But most of these job offers are really garbage."))
		news.append(NewsMaterial(title: "CEOs beware: Your astronomical salaries may soon cost you customers", text: "The upward march of chief executive salaries is a sore point in the debate over rising income inequality in America. Forty years ago, chief executives at large companies earned only about 20 times the average worker’s salary. In the 90s, the pay gap widened to ten times that size. Economists like Paul Krugman have argued that this happened in part because social norms changed. Multi-million dollar salaries began to seem, well, less unseemly."))
		return news
	}
}