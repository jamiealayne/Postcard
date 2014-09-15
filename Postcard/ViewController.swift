//
//  ViewController.swift
//  Postcard
//
//  Created by Jamie Layne on 9/12/14.
//  Copyright (c) 2014 Jamie Layne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var messageLabel: UILabel!
	@IBOutlet var nameTextField: UITextField!
	@IBOutlet var messageTextField: UITextField!
	@IBOutlet var mailButton: UIButton!
	@IBOutlet var nameLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	@IBAction func sendMailPressed(sender: UIButton) {
		messageLabel.hidden = false
		messageLabel.text = messageTextField.text
		nameLabel.hidden = false
		nameLabel.text = "Sent by: \(nameTextField.text)"
		nameLabel.textColor	= UIColor.blueColor()
		nameTextField.text = ""
		nameTextField.resignFirstResponder()
		messageTextField.text = ""
		messageTextField.resignFirstResponder()
		messageLabel.textColor = UIColor.redColor()
		mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
		
	}
}

