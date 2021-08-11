//
//  AppCoordinator.swift
//  ios-app
//
//  Created by Andrew Kovalev on 02.05.2021.
//  Copyright © 2021 IceRock Development. All rights reserved.
//

import UIKit

class AppCoordinator: BaseCoordinator {
    override func start() {
        addDependency(
            ListSampleCoordinator(window: self.window, factory: self.factory),
            completion: nil
        ).start()
    }
}
