//
//  ListSampleCoordinator.swift
//  ios-app
//
//  Created by Andrey Tchernov on 21.05.2021.
//  Copyright © 2021 IceRock Development. All rights reserved.
//

import UIKit
import MultiPlatformLibrary

class ListSampleCoordinator: BaseCoordinator, ListSampleViewModelEventsListener {
    override func start() {
        let viewController = ListSampleViewController()
        
        let viewModel = self.factory.listSampleFactory.createListViewModel(
            eventsDispatcher: EventsDispatcher(listener: self),
            unitFactory: ListSampleUnitFactoryImpl()
        )
        
        viewController.bindViewModel(viewModel)
        beginInNewNavigation(viewController)
    }
}
