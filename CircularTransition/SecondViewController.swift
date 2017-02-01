//
//  SecondViewController.swift
//  CircularTransition
//
//  Created by New User on 1/8/17.
//  Copyright © 2017 Will Garner. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
 
  @IBOutlet weak var dismissBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

      dismissBtn.layer.cornerRadius = dismissBtn.frame.size.width / 2


  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

  }
  
  @IBAction func dismissSecondVC(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
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
