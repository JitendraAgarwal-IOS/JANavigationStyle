//
//  DetailsVC.swift
//  JANavigation
//
//  Created by Jitendra Kumar Agarwal on 22/10/18.
//  Copyright © 2018 Jitendra Kumar Agarwal. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController, JANavigationStyle, JANavigationBarButtonStyle {

    override func viewDidLoad() {
        super.viewDidLoad()
       // setTitle(title: "Dashboard")
      //  setTitlePosition(lableUI: LabelTitleUI(_title: "Dashboard", _titleColor: .white, _font: UIFont(name: "Helvetica Neue", size: 20)!), position: .center, BGColor: .clear)
       
        setTileSubTitle(_title: LabelTitleUI(_title: "Jitendra ", _titleColor: .red, _font: UIFont(name: "Helvetica Neue", size: 18)!), _subTitle: Subtitle(_subTitle: LabelTitleUI(_title: "Agarwal", _titleColor: .black, _font:  UIFont(name: "Helvetica Neue", size: 16)!)))
        
       // setBgImage(pImage:  #imageLiteral(resourceName: "navBg"))
       
        
        addLeftBarButton(images: [ #imageLiteral(resourceName: "menu"), #imageLiteral(resourceName: "settings")]) { (index) in
            print("actionindex\(index)")
        }
        addRightBarButton(images: [#imageLiteral(resourceName: "notification"),#imageLiteral(resourceName: "bookmark")]) { (index) in
            print("actionindex\(index)")
        }
     
       // hideNavigationBar(true)
    }
    

    @IBAction func actionBack(_ sender: UIButton) {
  self.navigationController?.popViewController(animated: true)
    }
    

}
