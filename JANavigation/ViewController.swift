//
//  ViewController.swift
//  JANavigation
//
//  Created by Jitendra Kumar Agarwal on 19/10/18.
//  Copyright © 2018 Jitendra Kumar Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,JANavigationStyle, JANavigationBarButtonStyle{
   

    override func viewDidLoad() {
        super.viewDidLoad()
      
        setTitle(title: "Login", BGColor: .white, tintColor: .yellow)
        addLeftBarButton(images: [ #imageLiteral(resourceName: "menu"), #imageLiteral(resourceName: "settings")]) { (index) in
            print("actionindex\(index)")
        }
        addRightBarButton(images: [ #imageLiteral(resourceName: "notification"), #imageLiteral(resourceName: "bookmark"),#imageLiteral(resourceName: "user")]) { (index) in
            print("actionindex\(index)")
        }
        

    }


    @IBAction func actionMoveVC(_ sender: UIButton) {
  
    let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        hideNavigationBar(false)
    }
    
}

