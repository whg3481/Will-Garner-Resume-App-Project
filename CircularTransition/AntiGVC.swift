//
//  AntiGVC.swift
//  CircularTransition
//
//  Created by New User on 1/18/17.
//  Copyright © 2017 Will Garner. All rights reserved.
//

import UIKit

class AntiGVC: UIViewController {


  @IBOutlet weak var antiGdismiss: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

 antiGdismiss.layer.cornerRadius = antiGdismiss.frame.size.width / 2
  
  }
  
  @IBAction func antiGdismiss(_ sender: Any) { self.dismiss(animated: true, completion: nil)
  }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
