//
//  ViewController.swift
//  IfSwitchCase
//
//  Created by Ilya Aleshin on 29.05.2018.
//  Copyright © 2018 Bakh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var background: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var switcher: UISwitch!
    private var dark: Bool = false
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if dark {
            return .lightContent
        } else {
            return .default
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func colorChange(_ sender: Any) {
        if (switcher.isOn) {
            background.backgroundColor = UIColor.black
            label.textColor = UIColor.white
        } else {
            background.backgroundColor = UIColor.white
            label.textColor = UIColor.red
        }
        self.dark = switcher.isOn
        self.setNeedsStatusBarAppearanceUpdate()
    }
    
}

