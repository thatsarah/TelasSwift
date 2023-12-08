//
//  GreenCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-08 on 08/12/23.
//

import UIKit

class GreenCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let redCoordinator = RedCoordinator(navigationController: self.navigationController)
        let viewController = GreenViewController()
        viewController.redScreenHandler = {
            redCoordinator.start()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
