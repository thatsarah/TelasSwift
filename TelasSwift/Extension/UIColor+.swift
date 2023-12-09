//
//  UIColor+.swift
//  TelasSwift
//
//  Created by Sarah Rodrigues on 08/12/23.
//

import UIKit

extension UIColor {
    static var blueBackgroundColor: UIColor {
        UIColor(named: "blueBackgroundColor") ?? .systemBlue
    }
    static var greenBackgroundColor: UIColor {
        UIColor(named: "greenBackgroundColor") ?? .systemGreen
    }
    static var redBackgroundColor: UIColor {
        UIColor(named: "redBackgroundColor") ?? .systemRed
    }
    
    static var buttonBackgroundColor: UIColor {
        UIColor(named: "buttonButtonBackgroundColor") ?? .white
    }
    
    static var greenButtonBackgroundColor: UIColor {
        UIColor(named: "greenButtonBackgroundColor") ?? .lightGray
    }
    
    static var redButtonBackgroundColor: UIColor {
        UIColor(named: "redButtonBackgroundColor") ?? .lightGray
    }
    
    static var textLabelColor: UIColor {
        UIColor(named: "textLabelColor") ?? .black
    }
    
}
