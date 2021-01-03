//
//  NavigationViewController.swift
//  diabetaXD
//
//  Created by Aluno Mack on 24/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true

    }
    
    


}
