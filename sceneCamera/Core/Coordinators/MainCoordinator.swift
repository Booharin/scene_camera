//
//  MainCoordinator.swift
//  sceneCamera
//
//  Created by Booharin on 14.04.2020.
//  Copyright © 2020 umbrella. All rights reserved.
//

final class MainCoordinator: BaseCoordinator {
    var onFinishFlow: (() -> Void)?
    
    override func start() {
        showMainModule()
    }
    
    private func showMainModule() {
        let controller = MainViewController()
        setAsRoot(controller)
    }
}


