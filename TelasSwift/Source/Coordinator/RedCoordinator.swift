//
//  RedCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-08 on 08/12/23.
//

import UIKit

class RedCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let greenCoordinator = GreenCoordinator(navigationController: self.navigationController)
        let viewController = BlueViewController()
        viewController.greenScreenHandler = {
            greenCoordinator.start()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
