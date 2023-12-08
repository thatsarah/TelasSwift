//
//  RedView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-08 on 08/12/23.
//

import UIKit

class RedView: UIView {
    override init(frame: CGRect) {
        super.init(frame: CGRectZero)
        self.backgroundColor = .blue
        setUpVisualElements()
    }
    
    let redLabel = UILabel()
    let blueButton = UIButton()
    let greenButton = UIButton()
    
    func setUpVisualElements() {
        addSubview(redLabel)
        addSubview(blueButton)
        
        NSLayoutConstraint.activate([
            
            redLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 240),
            redLabel.widthAnchor.constraint(equalToConstant: 275),
            redLabel.heightAnchor.constraint(equalToConstant: 60),
            redLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            redLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            blueButton.topAnchor.constraint(equalTo: redLabel.bottomAnchor, constant: 30),
            blueButton.widthAnchor.constraint(equalToConstant: 275),
            blueButton.heightAnchor.constraint(equalToConstant: 60),
            blueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            blueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            greenButton.topAnchor.constraint(equalTo: blueButton.bottomAnchor, constant: 10),
            greenButton.widthAnchor.constraint(equalToConstant: 275),
            greenButton.heightAnchor.constraint(equalToConstant: 60),
            greenButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            greenButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
