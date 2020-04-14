//
//  ApplicationCoordinator.swift
//  sceneCamera
//
//  Created by Booharin on 14.04.2020.
//  Copyright © 2020 umbrella. All rights reserved.
//

final class ApplicationCoordinator: BaseCoordinator {
    
    override func start() {
        toMain()
    }
    
    private func toMain() {
        let coordinator = MainCoordinator()
        coordinator.onFinishFlow = { [weak self, weak coordinator] in
            self?.removeDependency(coordinator)
            self?.start()
        }
        addDependency(coordinator)
        coordinator.start()
    }
}
