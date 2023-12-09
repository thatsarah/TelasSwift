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
        self.backgroundColor = .systemBlue
        setUpVisualElements()
    }
    
    var blueLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "SFProDisplay-Light", size: 60)
        label.text = "This is the blue screen."
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
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
        addSubview(blueLabel)
        addSubview(greenButton)
        
        NSLayoutConstraint.activate([
            
            blueLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 320),
            blueLabel.widthAnchor.constraint(equalToConstant: 275),
            blueLabel.heightAnchor.constraint(equalToConstant: 60),
            blueLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            blueLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            greenButton.topAnchor.constraint(equalTo: blueLabel.bottomAnchor, constant: 30),
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
