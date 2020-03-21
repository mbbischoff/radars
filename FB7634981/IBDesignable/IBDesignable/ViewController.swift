//
//  ViewController.swift
//  IBDesignable
//
//  Created by Matthew Bischoff on 3/13/20.
//  Copyright © 2020 Globite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        let designView = UINib(nibName: "DesignableView", bundle: nil).instantiate(withOwner: self, options: nil).first as! DesignableView
        designView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(designView)
        
        view.centerXAnchor.constraint(equalTo: designView.centerXAnchor).isActive = true
        view.centerYAnchor.constraint(equalTo: designView.centerYAnchor).isActive = true
    }


}

