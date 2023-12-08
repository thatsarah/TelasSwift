//
//  BlueView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-08 on 08/12/23.
//

import UIKit

class BlueView: UIView {
    override init(frame: CGRect) {
        super.init(frame: CGRectZero)
        self.backgroundColor = .blue
        setUpVisualElements()
    }
    
    let blueLabel = UILabel()
    let greenButton = UIButton()
    let redButton = UIButton()
    
    func setUpVisualElements() {
        addSubview(blueLabel)
        addSubview(greenButton)
        addSubview(redButton)
        
        NSLayoutConstraint.activate([
            
            blueLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 240),
            blueLabel.widthAnchor.constraint(equalToConstant: 275),
            blueLabel.heightAnchor.constraint(equalToConstant: 60),
            blueLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            blueLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            greenButton.topAnchor.constraint(equalTo: blueLabel.bottomAnchor, constant: 30),
            greenButton.widthAnchor.constraint(equalToConstant: 275),
            greenButton.heightAnchor.constraint(equalToConstant: 60),
            greenButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            greenButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            redButton.topAnchor.constraint(equalTo: greenButton.bottomAnchor, constant: 10),
            redButton.widthAnchor.constraint(equalToConstant: 275),
            redButton.heightAnchor.constraint(equalToConstant: 60),
            redButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            redButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
