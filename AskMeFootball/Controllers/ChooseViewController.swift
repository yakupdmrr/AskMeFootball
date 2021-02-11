//
//  ChooseViewController.swift
//  AskMeFootball
//
//  Created by Yakup Demir on 21.12.2020.
//

import UIKit

class ChooseViewController: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "adamresim")!)
    }
    

    @IBAction func backButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
