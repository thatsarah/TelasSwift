//
//  RedViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-08 on 08/12/23.
//

import UIKit

class RedViewController: UIViewController {
    
    let redView = RedView()
    
    var blueScreenHandler: (() -> Void)?
    var greenScreenHandler: (() -> Void)?

    
    override func loadView() {
        view = redView
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .systemRed
        super.viewDidLoad()
        redView.blueButton.addTarget(self, action: #selector(blueScreen), for: .touchUpInside)
        redView.greenButton.addTarget(self, action: #selector(greenScreen), for: .touchUpInside)

    }
    
    @objc private func blueScreen() {
        blueScreenHandler?()
    }
    
    @objc private func greenScreen() {
        greenScreenHandler?()
    }
    
    
}
