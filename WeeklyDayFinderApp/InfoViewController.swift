//
//  InfoViewController.swift
//  WeeklyDayFinderApp
//
//  Created by agnese.saulite on 28/08/2020.
//  Copyright © 2020 AS. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var appInfoLabel: UILabel!
    @IBOutlet weak var appDescLabel: UILabel!
    
    var infoText = String()
    let appDescText = "This app is a home work project.\n Which day of the week is your day?\nCheck Dark/Light Mode."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDescLabel.text = appDescText
        
        if !infoText.isEmpty{
            appInfoLabel.text = infoText
        }
    }
    
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        print("dismiss VC")
    }
    
    
}
