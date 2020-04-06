//
//  ViewController.swift
//  Light
//
//  Created by Mark Meretzky on 4/6/20.  Project Light in pp. 95-112.
//  Copyright © 2020 New York University School of Professional Studies. All rights reserved.
//

import UIKit;

class ViewController: UIViewController {
    var lightOn: Bool = true;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view.
        updateUI();
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        lightOn = !lightOn;
        updateUI();
    }
    
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black;
        setNeedsStatusBarAppearanceUpdate();   //not in textbook
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {   //not in textbook
        return lightOn ? .darkContent : .lightContent;
    }
}
