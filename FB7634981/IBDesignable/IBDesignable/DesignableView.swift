//
//  DesignableView.swift
//  IBDesignable
//
//  Created by Matthew Bischoff on 3/13/20.
//  Copyright © 2020 Globite. All rights reserved.
//

import UIKit

@IBDesignable
final class DesignableView: UIView {
    
    @IBOutlet var label: UILabel!
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        self.label.text = "Design Time text"
    }
}
