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
    
    override func loadView() {
        view = redView
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .green
        super.viewDidLoad()
        redView.blueButton.addTarget(self, action: #selector(blueScreen), for: .touchUpInside)

    }
    
    @objc private func blueScreen() {
        blueScreenHandler?()
    }
}
