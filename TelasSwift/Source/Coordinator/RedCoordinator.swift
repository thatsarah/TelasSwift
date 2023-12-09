//
//  RedCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-08 on 08/12/23.
//

import UIKit

class RedCoordinator: Coordinator {
    
    var navigationController = UINavigationController()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let blueCoordinator = BlueCoordinator(navigationController: self.navigationController)
        let viewController = RedViewController()
        viewController.blueScreenHandler = {
            blueCoordinator.start()
        }
        viewController.greenScreenHandler = {
            self.backToGreenScreen()
        }
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func backToGreenScreen() {
        self.navigationController.popViewController(animated: true)
    }
}
