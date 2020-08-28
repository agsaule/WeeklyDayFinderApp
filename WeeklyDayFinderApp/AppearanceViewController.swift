//
//  AppearanceViewController.swift
//  WeeklyDayFinderApp
//
//  Created by agnese.saulite on 28/08/2020.
//  Copyright © 2020 AS. All rights reserved.
//

import UIKit

class AppearanceViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()
    }
    
    @IBAction func openSettingstTapped(_ sender: Any) {
        
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingsURL){
            UIApplication.shared.open(settingsURL, options: [:]) { (success) in
                print(success)
            }
        }
    }
    
    func setLabelText(){
        var text = "Unable to specify UI style"
        
        if self.traitCollection.userInterfaceStyle == .dark {
            text = "Dark Mode is on. \nGo to settings if you wish to \nto change to Light Mode."
        }else{
            text = "Light Mode is on. \nGo to settings if you wish to \nto change to Dark Mode."
        }
        textLabel.text = text
    }
} //end class






