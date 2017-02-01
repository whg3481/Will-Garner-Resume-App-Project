//
//  ViewController.swift
//  CircularTransition
//
//  Created by New User on 1/8/17.
//  Copyright © 2017 Will Garner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {



  @IBOutlet weak var menuBtn: UIButton!
  
  @IBOutlet weak var mobileMafiaBtn: UIButton!
  
  
  @IBOutlet weak var antiGBtn: UIButton!
  
  
  let transition = CircularTransition()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    menuBtn.layer.cornerRadius = menuBtn.frame.size.width / 2
    
    mobileMafiaBtn.layer.cornerRadius = mobileMafiaBtn.frame.size.width / 2

    antiGBtn.layer.cornerRadius = antiGBtn.frame.size.width / 2

    
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if segue.identifier == "1"{
      let SecondVC = segue.destination as! SecondViewController
      SecondVC.transitioningDelegate = self
      SecondVC.modalPresentationStyle = .custom
      
  
    }
    
    if segue.identifier == "2"{
      let mmVC = segue.destination as! mobileMafiaVC
      mmVC.transitioningDelegate = self
      mmVC.modalPresentationStyle = .custom
    }
    
    if segue.identifier == "3"{
      let antiVC = segue.destination as! AntiGVC
      antiVC.transitioningDelegate = self
      antiVC.modalPresentationStyle = .custom
    }
    
    
    
    
    
    
  }

  
  func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    
  
    transition.transitionMode = .present
    transition.startingPoint = menuBtn.center
    transition.circleColor = menuBtn.backgroundColor!
    
    
    transition.transitionMode = .present
    transition.startingPoint = mobileMafiaBtn.center
    transition.circleColor = mobileMafiaBtn.backgroundColor!
    
    transition.transitionMode = .present
    transition.startingPoint = antiGBtn.center
    transition.circleColor = antiGBtn.backgroundColor!
    
    return transition
  
  }
  
  func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    transition.transitionMode = .dismiss
    transition.startingPoint = menuBtn.center
    transition.circleColor = menuBtn.backgroundColor!
    
    transition.transitionMode = .dismiss
    transition.startingPoint = mobileMafiaBtn.center
    transition.circleColor = mobileMafiaBtn.backgroundColor!
    
    transition.transitionMode = .dismiss
    transition.startingPoint = antiGBtn.center
    transition.circleColor = antiGBtn.backgroundColor!
    
    return transition
  }
  
 override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

