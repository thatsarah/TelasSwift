//
//  BlueViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-08 on 08/12/23.
//

import UIKit

class BlueViewController: UIViewController {
    
    let blueView = BlueView()
    
    var greenScreenHandler: (() -> Void)?
    
    override func loadView() {
        view = blueView
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .blue
        super.viewDidLoad()
        blueView.greenButton.addTarget(self, action: #selector(greenScreen), for: .touchUpInside)
    }
    
    @objc private func greenScreen() {
        greenScreenHandler?()
    }
    
}
