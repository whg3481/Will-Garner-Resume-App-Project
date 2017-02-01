//
//  mobileMafiaVC.swift
//  CircularTransition
//
//  Created by New User on 1/18/17.
//  Copyright © 2017 Will Garner. All rights reserved.
//

import UIKit

class mobileMafiaVC: UIViewController {

  @IBOutlet weak var mmDismissBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
      
      mmDismissBtn.layer.cornerRadius = mmDismissBtn.frame.size.width / 2

    }

  @IBAction func mmBtn(_ sender: Any) { self.dismiss(animated: true, completion: nil)
  }
  

    

}
