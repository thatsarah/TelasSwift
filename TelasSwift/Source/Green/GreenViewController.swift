//
//  GreenViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-08 on 08/12/23.
//

import UIKit

class GreenViewController: UIViewController {
    
    let greenView = GreenView()
    
    var redScreenHandler: (() -> Void)?
    var blueScreenHandler: (() -> Void)?

    
    override func loadView() {
        view = greenView
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .green
        super.viewDidLoad()
        greenView.redButton.addTarget(self, action: #selector(redScreen), for: .touchUpInside)
        greenView.blueButton.addTarget(self, action: #selector(blueScreen), for: .touchUpInside)

    }
    
    @objc private func redScreen() {
        redScreenHandler?()
    }
    
    @objc private func blueScreen() {
        blueScreenHandler?()
    }
    
}
