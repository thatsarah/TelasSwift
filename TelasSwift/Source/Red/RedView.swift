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
        self.backgroundColor = .systemRed
        setUpVisualElements()
    }
    
    var redLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont(name: "SFProDisplay-Light", size: 24)
        label.text = "This is the red screen."
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var blueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Blue Screen", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    var greenButton: UIButton = {
        let button = UIButton()
        button.setTitle("Green Screen", for: .normal)
        button.setTitleColor(.systemGreen, for: .normal)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    func setUpVisualElements() {
        addSubview(redLabel)
        addSubview(blueButton)
        addSubview(greenButton)

        
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
