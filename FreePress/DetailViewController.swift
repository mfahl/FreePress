//
//  DetailViewController.swift
//  FreePress
//
//  Created by Martin on 17.10.15.
//  Copyright © 2015 MartinMarc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

	@IBOutlet weak var detailDescriptionLabel: UILabel!


	var detailItem: NewsMaterial? {
		didSet {
		    // Update the view.
		    self.configureView()
		}
	}

	func configureView() {
		// Update the user interface for the detail item.
		if let detail = self.detailItem {
		    if let label = self.detailDescriptionLabel {
						let attrStr = try! NSAttributedString(
										data: detail.text.dataUsingEncoding(NSUnicodeStringEncoding, allowLossyConversion: true)!,
										options: [ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType],
										documentAttributes: nil)
						label.attributedText = attrStr
						label.numberOfLines = 0
						label.sizeToFit()
		    }
		}
		self.title = detailItem?.title
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		self.navigationController?.navigationBar.tintColor = ColorSchemeProvider.accent()
		// Do any additional setup after loading the view, typically from a nib.
		self.configureView()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

